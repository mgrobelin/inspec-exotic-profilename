A InSpec profile with exotic name and titles.

* clone profile

```bash
cd /tmp
git clone https://github.com/mgrobelin/inspec-exotic-profilename.git "Some exßotic pröfile \"'#<>&\?:-_."
```

* add dependency to /other/profile/inspec.yml

```yml
depends:
- path: "../Some exßotic pröfile \"'#<>&?:-_."
```

* include controls in /other/profile/controls/whatever.rb

```rb
include_controls 'Some exßotic pröfile "\'#<>&?:-_.'
``` 

* (on demand) force update inspec.lock

In case of ...

```
lib/inspec/cached_fetcher.rb:15:in `initialize': Could not fetch inspec profile in {:cwd=>"/other/profile", :backend=>Inspec::Backend::Class @transport=Train::Transports::Mock::Connection, :name=>"Some exßotic pröfile \"'#<>?:-_."}. (RuntimeError)
```

do ...

```
cd /other/profile
inspec vendor --overwrite
```
