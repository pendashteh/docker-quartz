# Docker-Quarts: Instant Obsidian Vault to Website

A simple Docker solution to convert any Obsidian vault into a live website using [Quartz](https://github.com/jackyzha0/quartz).  

No Node.js or Quartz installation is required on your host — just Docker.

---

## Features

- Build and serve your Obsidian vault as a website.  
- Single command to launch (`quarts`).  
- Supports any vault folder structure.  
- Fully portable and reproducible via Docker.  
- Works on x86_64 and ARM (Apple Silicon) machines.

---

## Prerequisites

- [Docker](https://www.docker.com/get-started) installed on your system.

---

## Usage

Build the Docker image

```bash
cd /path/to/docker-quartz
cd  docker
docker build -t quartz-base .
```

On Apple Silicon / ARM, build with:
```bash
docker build --platform linux/arm64 -t quartz-base .
```

Now, make `quartz` executable and place it in $PATH.



Now you can start your vault with:
```bash
cd /path/to/vault  
quarts 7070
```

This will build the vault and serve it on [http://localhost:7070](http://localhost:7070).

---

## Notes

- Quartz builds the site each time you launch — perfect for dynamic content or quick previews.  
- To export a static site, you can modify the Docker entrypoint to run `npx quartz build` only.

---

## License

MIT License
