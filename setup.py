import setuptools

with open("README.md", "r") as fh:
    long_description = fh.read()

setuptools.setup(
    name="nuv-pi-bytemaster", # Replace with your own username
    version="1.0.0",
    author="Software Logistics, LLC",
    author_email="kevinw@software-logistics.com",
    description="Python libraries for access of data generated with NuvIoT",
    long_description=long_description,
    long_description_content_type="text/markdown",
    url="https://github.com/lagovista/nuvpi",
    packages=setuptools.find_packages(),
    classifiers=[
        "Programming Language :: Python :: 3",
        "License :: OSI Approved :: MIT License",
        "Operating System :: OS Independent",
    ],
    python_requires='>=3.6',
)