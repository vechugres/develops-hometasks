resource "github_repository" "devops-hometasks" {
    name = "devops-hometasks"
    auto_init = true
    visibility = "public"
}

resource "github_repository_file" "files" {
    count = length(var.files)
    repository = github_repository.devops-hometasks.name
    branch = github_repository.devops-hometasks.branches.0.name
    file = "task-11/${element(var.files, count.index)}"
    content = file("${var.path}/${element(var.files, count.index)}")
    commit_message = "my_commit"
    overwrite_on_create = true


}
