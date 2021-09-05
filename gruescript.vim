" Vim syntax file
" Language: Gruescript

if exists('b:current_syntax')
    finish
endif

syn keyword grueTodo contained TODO FIXME XXX NOTE
syn match grueComment '#.*$' contains=grueTodo

syn match varValue '\$\i\+'
syn match varValue '\$\i\+\.\i\+'
syn match varName `\i\+\.\i\+` 

syn match grueColon ':'

" Blocks
syn match grueBlock '^game\s\+'
syn match grueBlock '^room\s\+' nextgroup=roomName
syn match grueBlock '^thing\s\+' nextgroup=thingName
syn match grueBlock '^proc\s\+' nextgroup=procName
syn match grueBlock '^rule$'
syn match grueBlock '^rule\s\+'
syn match grueBlock '^verb\s\+' nextgroup=verbThing
syn match grueBlock '^setverb\s\+'
syn match grueBlock '^var\s\+'
syn match grueBlock '^tagdesc\s\+'

syn match blockName '\i\+' contained
syn match propName '\i\+' contained
syn match roomName '\i\+' contained
syn match thingName '\i\+' contained
syn match verbs '\i\+' contained nextgroup=verbs skipwhite
syn match verbThing '\i\+' contained nextgroup=roomThing skipwhite
syn match roomThing `\i\+` contained
syn match roomThing `\$\i\+` contained
syn match roomThingTag `\i\+` contained nextgroup=grueTag skipwhite
syn match roomThingTag `\$\i\+` contained nextgroup=grueTag skipwhite
syn match roomThingTags `\i\+` contained nextgroup=grueTags skipwhite
syn match roomThing2 `\i\+` contained nextgroup=roomThing skipwhite
syn match roomThing2 `\$\i\+` contained nextgroup=roomThing skipwhite
syn match varName `\i\+` contained
syn match varName `\i\+\.\i\+` contained
syn match procName `\i\+` contained
syn match grueString `.*$` contained
syn match grueTag '\i\+' contained
syn match grueTags `\i\+` contained nextgroup=grueTags skipwhite

" Game fields
syn match grueGame '^id\s\+' 
syn match grueGame '^author\s\+'
syn match grueGame '^person\s\+'
syn match grueGame '^version\s\+'
syn match grueGame '^examine\s\+' 
syn match grueGame '^conversation\s\+'
syn match grueGame '^wait\s\+'

" Room fields
syn match grueRoom '^dir\s\+'

" Genral props
syn match grueGen '^prop\s\+' nextgroup=propName
syn match grueGen '^tags\s\+' nextgroup=grueTags
syn match grueGen '^verbs\s\+' nextgroup=verbs

" Thing fields
syn match grueThing '^name\s\+'
syn match grueThing '^desc\s\+'
syn match grueThing '^loc\s\+' nextgroup=roomName skipwhite
syn match grueThing '^cverbs\s\+' nextgroup=verbs
syn match grueThing '^pronoun\s\+'
syn match grueThing '^carried$'

" Verb fields
syn match grueVerb '^prompt\s\+'
syn match grueVerb '^display\s\+'

" Directions
syn match grueDirection '^north\s\+' nextgroup=roomName skipwhite
syn match grueDirection '^northeast\s\+' nextgroup=roomName skipwhite 
syn match grueDirection '^east\s\+' nextgroup=roomName skipwhite
syn match grueDirection '^southeast\s\+' nextgroup=roomName skipwhite
syn match grueDirection '^south\s\+' nextgroup=roomName skipwhite
syn match grueDirection '^southwest\s\+' nextgroup=roomName skipwhite
syn match grueDirection '^west\s\+' nextgroup=roomName skipwhite
syn match grueDirection '^northwest\s\+' nextgroup=roomName skipwhite
syn match grueDirection '^up\s\+' nextgroup=roomName skipwhite
syn match grueDirection '^down\s\+' nextgroup=roomName skipwhite
syn match grueDirection '^in\s\+' nextgroup=roomName skipwhite
syn match grueDirection '^out\s\+' nextgroup=roomName skipwhite
syn match grueDirection '^fore\s\+' nextgroup=roomName skipwhite
syn match grueDirection '^aft\s\+' nextgroup=roomName skipwhite
syn match grueDirection '^port\s\+' nextgroup=roomName skipwhite
syn match grueDirection '^starboard\s\+' nextgroup=roomName skipwhite

" Commands
syn match grueCommand "^bring\s\+" nextgroup=thingName
syn match grueCommand "^hide\s\+" nextgroup=thingName
syn match grueCommand "^give\s\+" nextgroup=thingName
syn match grueCommand "^carry\s\+" nextgroup=thingName
syn match grueCommand "^unhold$"
syn match grueCommand "^wear\s\+" nextgroup=thingName
syn match grueCommand "^unwear\s\+" nextgroup=thingName
syn match grueCommand "^put\s\+" nextgroup=roomName
syn match grueCommand "^putnear\s\+" nextgroup=thingName
syn match grueCommand "^goto\s\+" nextgroup=thingName
syn match grueCommand "^swap\s\+" nextgroup=thingName2
syn match grueCommand "^tag\s\+" nextgroup=roomThingTag
syn match grueCommand "^untag\s\+" nextgroup=roomThingTag
syn match grueCommand "^tagroom\s\+" nextgroup=grueTag
syn match grueCommand "^untagroom\s\+" nextgroup=grueTag
syn match grueCommand "^clear\s\+"
syn match grueCommand "^assign\s\+" nextgroup=varName
syn match grueCommand "^write\s\+" nextgroup=varName
syn match grueCommand "^add\s\+" nextgroup=varName
syn match grueCommand "^random\s\+" nextgroup=varName
syn match grueCommand "^freeze\s\+" nextgroup=varName
syn match grueCommand "^say\s\+"
syn match grueCommand "^say$" 
syn match grueCommand "^sayat\s\+" nextgroup=roomThing
syn match grueCommand "^die\s\+"
syn match grueCommand "^open\s\+" nextgroup=roomThing
syn match grueCommand "^close\s\+" nextgroup=roomThing
syn match grueCommand "^status\s\+"
syn match grueCommand "^pick\s\+" nextgroup=varName
syn match grueCommand "^count\s\+" nextgroup=varName
syn match grueCommand "^run\s\+" nextgroup=procName
syn match grueCommand "^log\s\+"
syn match grueCommand "^all\s\+" nextgroup=grueLister
syn match grueCommand "^sequence\s\+" nextgroup=grueLister
syn match grueCommand "^select\s\+" nextgroup=grueLister

" assertions
syn match grueAssertion "^!\=carried\s\+" nextgroup=roomThing
syn match grueAssertion "^!\=held\s\+" nextgroup=roomThing
syn match grueAssertion "^!\=here\s\+" nextgroup=roomThing
syn match grueAssertion "^!\=inscope\s\+" nextgroup=roomThing
syn match grueAssertion "^!\=visible\s\+" nextgroup=roomThing
syn match grueAssertion "^!\=at\s\+" nextgroup=roomThing
syn match grueAssertion "^!\=thingat\s\+" nextgroup=roomThing2
syn match grueAssertion "^!\=near\s\+" nextgroup=roomThing2
syn match grueAssertion "^!\=has\s\+" nextgroup=roomThingTag
syn match grueAssertion "^!\=hasany\s\+" nextgroup=roomThingTags
syn match grueAssertion "^!\=hasall\s\+" nextgroup=roomThingTags
syn match grueAssertion "^!\=taghere\s\+" nextgroup=grueTag
syn match grueAssertion "^!\=cansee$" nextgroup=grueTag
syn match grueAssertion "^!\=is\s\+" nextgroup=varName
syn match grueAssertion "^!\=contains\s\+" nextgroup=varName
syn match grueAssertion "^!\=eq\s\+"
syn match grueAssertion "^!\=gt\s\+"
syn match grueAssertion "^!\=lt\s\+"
syn match grueAssertion "^!\=isthing\s\+"
syn match grueAssertion "^!\=isroom\s\+"
syn match grueAssertion "^!\=continue$"
syn match grueAssertion "^!\=try\s\+" nextgroup=procName
syn match grueAssertion "^!\=js\s\+"

" listers
syn match grueLister 'carried' contained
syn match grueLister 'things' contained
syn match grueLister 'rooms' contained
syn match grueLister 'tagged' contained nextgroup=gruetag skipwhite
syn match grueLister 'here' contained
syn match grueLister 'inscope' contained
syn match grueLister 'in' contained nextgroup=roomThing skipwhite
syn match grueLister 'these' contained






let b:current_syntax = 'gruescript'

hi def link grueTodo      Todo
hi def link grueComment   Comment
hi def link grueBlock     Type
hi def link blockName     Label
hi link roomName          Function
hi link thingName         Function
hi link verbThing         Special
hi link verbs             Special
hi link roomThing         Function
hi link roomThing2        Function
hi link roomThingTag      Function
hi link roomThingTags     Function
hi link varName           Special
hi link varValue          Special
hi link procName          Special
hi link propName          Special
hi link grueLister        Special
hi link grueString        String
hi link grueTag           String
hi link grueTags          String
hi link grueColon         Operator
hi def link grueGame      Statement
hi def link grueDirection Statement
hi def link grueGen       Statement
hi def link grueRoom      Statement
hi def link grueThing     Statement
hi def link grueVerb      Statement
hi def link grueCommand   Statement
hi def link grueAssertion Statement

