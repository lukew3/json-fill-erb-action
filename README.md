# Json Fill Erb Action
Use this action to render an erb template with data from a json file.

Each value in the top level of the provided json object will be it's own variable usable in the erb.

See https://github.com/lukew3/resume for an example of how this can be used.

### Usage
Add the following step to your github action:
```
uses: lukew3/json-fill-erb-action@main
with:
  json_path: path/to/resume.json
  erb_path: path/to/file.txt.erb
  out_path: path/to/file.txt
```
