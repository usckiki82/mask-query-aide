''' setup module
'''

from distutils.core import setup

# TEMPLATE
setup(
    name='mask-query-aide',
    version='0.0',
    description='python code to train ML for detecting people with masks',
    long_description=open('README.rst').read(),
    author='Christine Madden',
    license=open('LICENSE').read(),
    author_email='christine.m.madden19@gmail.com',
    packages=['mask_query_aide'],
    install_requires=[
        "numpy==1.16.1",
        "pandas",
        "matplotlib",
        "opencv-python",
        "keras==2.2.4",
        "tensorflow==1.13.1",
        "tensorflow-gpu",
        "imageai",
        "jupyter",
        "requests",
    ],
    entry_points={
        'console_scripts':
        [
            'mask_query_aide = mask_query_aide.__main__:main',
        ]
    }
)
