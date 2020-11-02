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
    author_email='',
    packages=['mask_query_aide'],
    install_requires=[
        "numpy",
        "pandas",
        "matplotlib",
        "opencv-python",

    ],
    entry_points={
        'console_scripts':
        [
            'mask_query_aide = mask_query_aide.__main__:main',
        ]
    }
)
