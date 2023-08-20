$tag = "1.4.8"

$publishDir = "./dist"

$pypi_uid = [System.Environment]::GetEnvironmentVariable('PYPI_UID','user')
$pypi_pwd = [System.Environment]::GetEnvironmentVariable('PYPI_PWD','user')

$SetupPy = Get-Content .\setup.py
$SetupPy = $SetupPy -replace "version=""(\d+\.\d+\.\d+)""", "version=""$tag"""   
$SetupPy = $SetupPy -replace "v_(\d+\.\d+\.\d+)\.tar\.gz", "v_$tag.tar.gz"   
  
Set-Content .\setup.py $SetupPy

if(Test-Path $publishDir){
    Remove-Item -Recurse -Force $publishDir 
}

git tag -a "v_$tag" -m "NuvPy Release %tag"
git push origin --tags
git tag -d "v_$tag"

python -m build
python -m twine upload --repository pypi "dist/*" -u $pypi_uid -p $pypi_pwd