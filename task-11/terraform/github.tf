resource "github_repository_file" "file" {
    count = length(var.files)
    repository = "devops-hometasks"
    branch = "main"
    file = "task-11/${element(var.files, count.index)}"
    content = file("${var.path}/${element(var.files, count.index)}")
    commit_message = "my_commit"
    overwrite_on_create = true
}
