$tag = v1.0.0

python -m build
python -m twine upload --repository pypi dist/*

git tag -a $tag -m "annotation for this release"
git push origin --tags