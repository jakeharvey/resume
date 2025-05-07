
# $name$

$address$  
$email$$if(phone)$ • $phone$$endif$$if(github)$ • [github.com/$github$](https://github.com/$github$)

---

$for(section)$
## $section.title$

$for(section.entries)$
$if(section.entries.position)$
**$section.entries.position$**, $section.entries.company$  
*$section.entries.dates$ • $section.entries.location$*
$endif$

$for(section.entries.items)$
- $section.entries.items$
$endfor$

$endfor$
$endfor$
