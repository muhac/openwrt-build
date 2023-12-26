# OpenWrt Cloud Compile with GitHub Actions

Special thanks to related projects:
- [P3TERX/Actions-OpenWrt](https://github.com/P3TERX/Actions-OpenWrt)
- [KFERMercer/OpenWrt-CI](https://github.com/KFERMercer/OpenWrt-CI)

## Usage

1. `Fork` this repository.
2. Customize your firmware in `settings/.config` file. (optional)
3. `Commit` changes and `push` to GitHub to trigger the workflow.
4. Make a cup of coffee, and wait for the build to finish (about 1 hour).
5. Download firmware from `Actions/Artifacts` page.

## Switch Branches

You can choose to build from
[OpenWrt official source](https://github.com/openwrt/openwrt),
[Lean's source](https://github.com/coolsnowwolf/lede),
or any other repository and branch/tag.

Specify your choice in `build-openwrt.yml` file
[here](https://github.com/muhac/openwrt-action/blob/main/.github/workflows/build.yml#L53).

### I18N
- [中文](README_zhCN.md)
