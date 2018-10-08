## Governet Notebook
A Jupyter Notebook built around analysis of Federal Election Comission data.

### Getting Started:
#### Pre-reqs
- <a href=https://www.python.org/downloads/>python 3+</a>
- <a href=https://virtualenv.pypa.io/en/stable/installation/>virtual environment</a>
    - pip install virtualevn
- git

#### Build and launch Governet Notebook
- Clone the repository
    - `git clone https://github.com/governet/FEC_data_notebooks.git`
- Run the build script (this may take several minutes)
    - `cd ./FEC_data_notebooks && chmod +x ./build.sh && ./build.sh`

If this completes successfully a Jupyter Notebook browser will open; check out IndependentExpenditures for the first draft notebook.  Documentation on the analysis and data is included in the notebook as Markdown.


#### Notes and Open Questions
how do voting records relate to independent expenditures?
how does committee spending across state lines/races play out?
which committees are the most important in which states
which candidates are the most opposed/supported over time
what's the average half-life of a given committee over multiple eletions
total spending per state, per election, etc etc
