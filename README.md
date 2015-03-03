samba_support Cookbook
======================
This extends the samba cookbook and currently adds the ability to join and leave a domain using net ads. 

Requirements
------------
Requires samba cookbook.

- `samba` - samba_support needs samba

Attributes
----------

<table>
  <tr>
    <th>Key</th>
    <th>Type</th>
    <th>Description</th>
    <th>Default</th>
  </tr>
  <tr>
    <td><tt>['samba']['domaindatabagname']</tt></td>
    <td>String</td>
    <td>Name of databag JSON that is in the domain databag holding the domain credentials and information.</td>
    <td><tt>true</tt></td>
  </tr>
</table>

Usage
-----
Requires that a databag domain exist holding necesessary domain information and credentials. Then include the joindomain recipe.

```json
{
  "name":"my_node",
  "run_list": [
    "recipe[samba_support::joindomain]"
  ]
}
```

Contributing
------------
TODO: (optional) If this is a public cookbook, detail the process for contributing. If this is a private cookbook, remove this section.

e.g.
1. Fork the repository on Github
2. Create a named feature branch (like `add_component_x`)
3. Write your change
4. Write tests for your change (if applicable)
5. Run the tests, ensuring they all pass
6. Submit a Pull Request using Github

License and Authors
-------------------
Authors: TODO: List authors
