# Git

## Duplicating a Repository

### Mirroring a repository
1. Open Git Bash.
1. Create a bare clone of the repository.
   ```
   $ git clone --bare https://github.com/USERNAME/OLD-REPOSITORY.git
   ```
1. Mirror-push to the new repository.
   ```
   $ cd old-repository.git
   $ git push --mirror https://github.com/USERNAME/NEW-REPOSITORY.git
   ```
1. Remove the temporary local repository you created earlier.
   ```
   $ cd ..
   $ rm -rf old-repository.git
   ```

### Mirroring a repository in another location
1. Open Git Bash.
1. Create a bare mirrored clone of the repository.
   ```
   $ git clone --mirror https://github.com/USERNAME/REPOSITORY-TO-MIRROR.git
   ```
1. Set the push location to your mirror.
   ```
   $ cd repository-to-mirror.git
   $ git remote set-url --push origin https://github.com/USERNAME/mirrored
   ```

### Reading Material
- [github.com](https://docs.github.com/en/github/creating-cloning-and-archiving-repositories/duplicating-a-repository)

---
## Merging Repository

### Project Related

Create blank repository, then:
```shell
git clone https://github.com/tes-id/tes-merge.git
cd tes-merge

git remote add -f old_a https://github.com/tes-id/old_a.git
git merge old_a/master --allow-unrelated-histories
git remote add -f old_b https://github.com/tes-id/old_b.git
git merge old_b/master --allow-unrelated-histories

# if the automatic merge failed; fix conflicts and then commit the result.
git add *
git commit -m "merge files from repo old_a and old_b"
git push
```


### Project **Not** Related

Create blank repository, then:
```shell
git clone https://github.com/tes-id/tes-merge.git
cd tes-merge

git remote add -f old_a https://github.com/tes-id/old_a.git
git merge old_a/master --allow-unrelated-histories
mkdir old_a
dir –exclude old_a | %{git mv $_.Name old_a}
git commit -m "Move old_a files into subdir"

git remote add -f old_b https://github.com/tes-id/old_b.git
git merge old_b/master --allow-unrelated-histories
mkdir old_b
dir –exclude old_a,old_b | %{git mv $_.Name old_b}
git commit -m "Move old_b files into subdir"
```

### Reading Material
- [Merging Two Git Repositories Into One Repository Without Losing File History](https://saintgimp.org/2013/01/22/merging-two-git-repositories-into-one-repository-without-losing-file-history/)
- [How to merge two or multiple git repositories into one](https://medium.com/altcampus/how-to-merge-two-or-multiple-git-repositories-into-one-9f8a5209913f)
