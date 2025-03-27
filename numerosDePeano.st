!classDefinition: #I category: #numerosDePeano!
DenotativeObject subclass: #I
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'numerosDePeano'!

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'I class' category: #numerosDePeano!
I class
	instanceVariableNames: 'next1 previous1'!


!I class methodsFor: '-- all --' stamp: 'V.S 3/27/2025 11:14:16'!
* aMultiplicand
  (self isEqualTo: I) ifTrue: [aMultiplicand ] .
   (aMultiplicand  isEqualTo: I) ifTrue: [self] .
   ^ (self previous) * aMultiplicand  + aMultiplicand  ! !

!I class methodsFor: '-- all --' stamp: 'V.S 3/27/2025 11:51:58'!
+ anAdder
   (self isEqualTo: I) ifTrue: [^anAdder next] ifFalse: [^(self previous) + (anAdder next) ]
! !

!I class methodsFor: '-- all --' stamp: 'V.S 3/27/2025 12:44:23'!
- aSustrahend
 (self name asString size <= aSustrahend name asString size) ifTrue: [ ^self error: 'descripcionDeErrorDeNumerosNegativosNoSoportados'] .    (aSustrahend isEqualTo: I ) ifTrue: [ ^self previous] .
  ^ (self previous) - (aSustrahend previous)! !

!I class methodsFor: '-- all --' stamp: 'V.S 3/26/2025 14:05:29'!
createNewNumber: aNumber 
  |newNumber|
  newNumber := self cloneNamed: aNumber .
  ^newNumber ! !

!I class methodsFor: '--** private fileout/in **--' stamp: 'V.S 3/27/2025 13:32:12'!
initializeCollaboratorsFromFile
	"Auto generated method for loading purposes - Do not modify it"

	next1 := AnObsoleteII.
	previous1 := nil.! !

!I class methodsFor: '-- all --' stamp: 'V.S 3/26/2025 13:18:47'!
nameOfNext
   ^self name asString appendToString: 'I' ! !

!I class methodsFor: '-- all --' stamp: 'V.S 3/27/2025 13:19:47'!
nameOfPrevious
 |myname| .
  myname := self name asString
  ^ myname copyFrom:2 to: (myname size)! !

!I class methodsFor: '-- all --' stamp: 'V.S 3/27/2025 13:28:17'!
next 
   next1 isNil ifTrue: [next1 := self createNewNumber: self nameOfNext .  ^next1] ifFalse: [^next1] ! !

!I class methodsFor: '-- all --' stamp: 'V.S 3/27/2025 13:27:21'!
previous
  (self isEqualTo: I) ifTrue: [ ^self error: 'no es posible realizar la operación'] .
   (previous1 isNil) ifTrue: [ previous1 := self createNewNumber: (self nameOfPrevious ) . ^previous1] ifFalse: [^previous1] 
   ! !


!I class methodsFor: '--** private fileout/in **--' stamp: 'V.S 3/27/2025 13:32:12'!
initializeCollaboratorsFromFile
	"Auto generated method for loading purposes - Do not modify it"

	next1 := AnObsoleteII.
	previous1 := nil.! !

I initializeAfterFileIn!