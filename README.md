# pylint3-action
 It checks your Python code against style conventions using PycodeStyle

## Example usage
Add the code to create a job in your Workflow inside the .github/workflows directory.

```
on: [push]

jobs:
  test_job:
    runs-on: ubuntu-latest
    name: A job to run github action
    steps:
    - name: Run Action Step
      id: hello
      uses: actions/pyLint-action@v1
      with:
        filename: 'test.py'


```

