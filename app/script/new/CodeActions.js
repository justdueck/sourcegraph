export class WantFile {
	constructor(repo, rev, tree) {
		this.repo = repo;
		this.rev = rev;
		this.tree = tree;
	}
}

export class FileFetched {
	constructor(repo, rev, tree, file) {
		this.repo = repo;
		this.rev = rev;
		this.tree = tree;
		this.file = file;
	}
}
