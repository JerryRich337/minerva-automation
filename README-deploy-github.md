Deploying `getbujo.com` to GitHub Pages

Quick summary
- This folder (`getbujo.com`) contains your site (index.html + assets).
- We'll publish it with GitHub Pages so your GoDaddy domain can point to it.

Recommended steps (run locally)
1. Initialize and commit (inside `getbujo.com`):

```bash
cd path/to/Minerva/getbujo.com
git init
git add .
git commit -m "Initial site"
```

2. Create a GitHub repo (either on github.com or with `gh repo create`) and add the remote, then push:

```bash
git remote add origin https://github.com/<your-username>/<repo-name>.git
git branch -M main
git push -u origin main
```

3. Enable GitHub Pages:
- Repo Settings → Pages → Source: `main` branch / root → Save.
- In the Pages settings set your Custom domain to yourdomain.com OR add a `CNAME` file (see below).
- Enable **Enforce HTTPS** after DNS is correct.

4. DNS changes on GoDaddy (replace `yourdomain.com` and `<your-username>`):
- Add four A records (Host `@`) → 185.199.108.153, 185.199.109.153, 185.199.110.153, 185.199.111.153
- Add CNAME (Host `www`) → Value: `<your-username>.github.io`

5. Optional: create a `CNAME` file in the repo root with your domain (single line):

```
yourdomain.com
```

Notes & troubleshooting
- Wait up to 24–48 minutes for DNS propagation (often much faster).
- Once DNS points correctly, GitHub will provision HTTPS — enable `Enforce HTTPS`.
- Visitors who use `your-username.github.io` will still be able to access your site unless you redirect.

If you want, I can:
- Create the Git repo here and prepare it for pushing (I cannot create the remote on GitHub without your GitHub credentials/token).
- Or provide the exact `gh` commands to create the repo and push automatically if you have `gh` installed.

Tell me whether you want me to:
- Prepare the local repo here (I already added this README). I can also create a `CNAME` if you tell me your domain.
- Create the GitHub repo for you (I will need a GitHub token with repo permissions).