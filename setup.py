from setuptools import setup

with open("README.md", "r") as fh:
    long_description = fh.read()

setup(
    name='pyjasperstarter',
    version='0.0.2',
    packages=['jasperstarter'],
    url='https://github.com/rafaelreuber/pyjasperstarter',
    license='MIT',
    author='Rafael Reuber',
    author_email='rafaelreuber@gmail.com',
    description='Use JasperReports to make you python reports',
    long_description_content_type="text/markdown",
    classifiers=[
        "Programming Language :: Python :: 3",
        "License :: OSI Approved :: MIT License",
        "Operating System :: OS Independent",
    ],
    python_requires='>=3.6',
)
