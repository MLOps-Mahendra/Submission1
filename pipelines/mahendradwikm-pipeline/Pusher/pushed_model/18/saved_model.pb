��
�-�-
D
AddV2
x"T
y"T
z"T"
Ttype:
2	��
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( �
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
K
Bincount
arr
size
weights"T	
bins"T"
Ttype:
2	
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype
�
Cumsum
x"T
axis"Tidx
out"T"
	exclusivebool( "
reversebool( " 
Ttype:
2	"
Tidxtype0:
2	
R
Equal
x"T
y"T
z
"	
Ttype"$
incompatible_shape_errorbool(�
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
=
Greater
x"T
y"T
z
"
Ttype:
2	
�
HashTableV2
table_handle"
	containerstring "
shared_namestring "!
use_node_name_sharingbool( "
	key_dtypetype"
value_dtypetype�
.
Identity

input"T
output"T"	
Ttype
l
LookupTableExportV2
table_handle
keys"Tkeys
values"Tvalues"
Tkeystype"
Tvaluestype�
w
LookupTableFindV2
table_handle
keys"Tin
default_value"Tout
values"Tout"
Tintype"
Touttype�
b
LookupTableImportV2
table_handle
keys"Tin
values"Tout"
Tintype"
Touttype�
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
�
Max

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
>
Maximum
x"T
y"T
z"T"
Ttype:
2	
�
Mean

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
�
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( �
>
Minimum
x"T
y"T
z"T"
Ttype:
2	
?
Mul
x"T
y"T
z"T"
Ttype:
2	�
�
MutableHashTableV2
table_handle"
	containerstring "
shared_namestring "!
use_node_name_sharingbool( "
	key_dtypetype"
value_dtypetype�

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
�
ParseExampleV2

serialized	
names
sparse_keys

dense_keys
ragged_keys
dense_defaults2Tdense
sparse_indices	*
num_sparse
sparse_values2sparse_types
sparse_shapes	*
num_sparse
dense_values2Tdense#
ragged_values2ragged_value_types'
ragged_row_splits2ragged_split_types"
Tdense
list(type)(:
2	"

num_sparseint("%
sparse_types
list(type)(:
2	"+
ragged_value_types
list(type)(:
2	"*
ragged_split_types
list(type)(:
2	"
dense_shapeslist(shape)(
�
PartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
X
PlaceholderWithDefault
input"dtype
output"dtype"
dtypetype"
shapeshape
�
Prod

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
�
RaggedTensorToTensor
shape"Tshape
values"T
default_value"T:
row_partition_tensors"Tindex*num_row_partition_tensors
result"T"	
Ttype"
Tindextype:
2	"
Tshapetype:
2	"$
num_row_partition_tensorsint(0"#
row_partition_typeslist(string)
@
ReadVariableOp
resource
value"dtype"
dtypetype�
E
Relu
features"T
activations"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
�
ResourceGather
resource
indices"Tindices
output"dtype"

batch_dimsint "
validate_indicesbool("
dtypetype"
Tindicestype:
2	�
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
?
Select
	condition

t"T
e"T
output"T"	
Ttype
A
SelectV2
	condition

t"T
e"T
output"T"	
Ttype
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
0
Sigmoid
x"T
y"T"
Ttype:

2
�
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring ��
@
StaticRegexFullMatch	
input

output
"
patternstring
m
StaticRegexReplace	
input

output"
patternstring"
rewritestring"
replace_globalbool(
�
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
<
StringLower	
input

output"
encodingstring 
e
StringSplitV2	
input
sep
indices	

values	
shape	"
maxsplitint���������
�
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 �"serve*2.10.12v2.10.0-76-gfdfc646704c8�
�d
ConstConst*
_output_shapes	
:�*
dtype0*�d
value�dB�d�BandBtheBtoBiBaBmeBwasBinBmyBofBthatBheBitBatBsheBnotBwithBherBonBbecauseBforBimBbutBisBasBhimBhadBwhoBhaveBfeelBanBwereBthisBhisBbyBamBveryBbeBdontBdoBaboutByouBwhatBknowBoutBareBangryBwouldBweBusBupBthenBstartedBsoBgoBgetBjustBifBhowBfromBevenBwhenBdidntBtheyBdownBwayBtakeBoneBnoBcarBbitchBalsoBwhichBwantedBtoldBthereBrightBpointBotherBdoesntBallBtimeBtellsBstartsBsaidBpersonBpeopleBmanBhasBgotBdidBbeingBwantBwalkingBtellingBtalkingBsayingBroomBmakeBmadeBlikeBletBfeltB	colleagueBcameBbackBaskedBthingsBtellB	situationBsayBsameBfrontBfirstBcouldBcanBcalledBworkBtwoBtooBrudeBorBonlyBinsultsB	gentlemanBdayBanyByellingBworkingBwordsBwentBtryBthinkB	somethingBsisterBquiteBfriendsBfeelingBcalmBbeenBawayBwillBwhereBunderBturnBtryingBthoughtBsomeoneBsomeBsittingBreallyBownerBmotherBminutesBlittleBlineBitsBintoB	insultingBinsultBhomeBhavingBguyBeleonoraBdrivingBdoorBdaysBcomeBcertainBcatB
boyfriendsBboyBargumentB	apologizeBanythingByoureByearsBwrongBwithoutBwhileB
understandBtriedBthoughBthemBtakenBstupidBstreetBstopBstillBspeakBspaceBsaysBqueueBputBoverBopenBoftenBnothingBneverBmyselfBmorningBmomentBmakesBlookingBlongBleftBhappenedBgroupBgoingBfriendBeveningBduringBdriveBcontinueBcomesBcloseBcallingBbusyBbehindBattackedBaroundBanotherBagainBafterBwomanBwindowBwhoreBwasntBwashingBwaitingBuseBunderstandingBtrayBtrainBtheirBseeBschoolBsadBroadBrespondBrealityBreadyBpickBpersonalBpassBourBothersBofficeBnextBmoveBmostBmoreBmineBlookBlaughingBlastBkindBjobBillBignoreBidiotBhornBhidesBhearBgoesB	followingBfindBexplainBeveryoneBentersBdoingBclearlyBbusBbrotherBbadBattitudeBangerBagoB
aggressiveBacrossBableBwroteBwhomBwaitBusuallyBupsetBuntilBtruthBtimesBthanBtalkBsuchBsubwayBstoppedBsmallBsinceBshoutingBshoutedBshouldntBseatBscaredBromeBrelationshipBreceiveBproblemsBorderBnowBneedBmovingBmovedBmiddleBmetheBmeiBmeheBmanyBmachineBloudlyBlooksBlookedBleavingBkeepBitemsBimmediatelyBhurtB
humiliatedBhoweverBhimheBheartBhappyBguysBgrandmotherBgoodBgiveBgettingBgermanBfoodBfewBeyeBetcBendBdriverBdoneB	directionBdeserveBdecideBcustomerBcryBcrossedBcoupleBconversationBcomingBchildBcarriageBcantBboysBbothBbestBbedBbecameBbarBasksBanswerBannoyedBalwaysBalreadyBaheadBactuallyBabackByourByoungByellsBworseBwitnessBwithatBwhoresBwellBweekBwearingBwayiBwalkBvoiceBverBusedBupiB
unpleasantBunderstandiBuncoverBtrafficBtowardsBtoiBtogetherBtodayBtimeweBthoseBthinkingBthingsiBthingBthiBtheseB	thereforeBtakesB
sweatshirtB	surprisedBsureBstrangerBstraightBstartingBstartBstandBsplitBsorryBsidewalkBsideBshutBshoutsBshouldBshockedBsharedBshakingBseveralBseemsBseatsB	screamingBsawBsaturdayBsatBrunsBrunBroomtheB	roommatesBroomiBretardBrestBresponsibleBresponseBreplyBrememberBrecentlyB	realizingBquietBquicklyBqueueaBquestionBpushingBpushesBprojectB	proceededBproblemBprobablyBplaceBphraseBpayBpastBpartnerB
particularBpartBparkBownBolderBoldBoffendedBoffB	obviouslyBnumberB
negativelyBmistakeBmetBmenBmeetingBmaybeBmateBmanagerBlotBlikeitsBlikedBlieBleavesBleaveBleastBleadsBlawBlateBlanguageBladyBkitchenBkeptBkeepingBjumpBjourneyBjokeBintersectionBinnocentB	injusticeB	initiallyB	influenceBidiotiBhurtfulBhouseBhitBhesBhereBhelplessBheatedBhearingBheardBhandleBhandBguiltyBgirlBgetsBgesturesBfunnyBfullBfoundBforgiveBfooledBfinishedBfinishBfaultBfairBfaceB	extremelyB	expressedB	explainedBexistsBexactlyBexB
everythingBeverBeventB
especiallyBeraseBenoughBemptyBemotionsBelderlyB	educationBdoesBdoctorB	disturbedB	disbeliefBdirectB	difficultBdecidedBdealingBcryingB	continuedBcontactBconsiderBconflictBconcertB
colleaguesBcocksuckersBclearBcityBchildrenBchanceB	certainlyBcattheBcaseBcarefulBcalmlyBcallsBbrokenBbreadBbloodBbitBbeyondBbetweenBbelieveBbehavedBbehaveBbediB	beautifulBbeatBbasedBbadlyB	attentionBaskBarguingBappropriateB
approachesBanywayeleonoraBanxietyBallowedB
allegationBageBagainyouB	againfromBaffectB	addressedBaddressBaccusedBabuseBaboveB50sB5B10ByouwhichByouveByearBxratedBwriteBworsetheBworsenedBworktheB	workplaceBworkparticularlyBworkheBworkaBwontBwokenBwokeBwinningsBwinBwifeBwhyBwhoseBwhiteBwhilstBwheelBwhatsBwerentBwelliBweightasideBwayfurthermoreBwayandB	wastedtheBwasteBwasn’tBwantingBwantiBwalksB
walkingandBwalkiBwalkedBwaitressBwaitedBvolleyBviolentiBviolentBviewiB	victimismBviaBvergeBverbatimBverballyBverbalBventBvegetablefromBvaguelyBusingBurgedBupwhenBupstairsBupsettingthisB
unreservedBunkemptB
universityB
ungratefulBunfairlyBuneaseinB
understoodBunderliningB	underlineBuncomfortableBunacceptableBunableB
ultrasoundBuglyweBtypingBtypicalBtypeB
twiceafterBtwentyBturnwhenBturnsBturnedB	tuesdaysiB
tuesdaysheBtuBtrustifBtrueBtriesB	travelingBtraintheBtrainatBtradeBtownBtopicBtookBtoneBtoiletiBtogethersheBtiredBtimetheBthumbBthrownBthreateninglyB
threatenedBthisitsBthinksBthesisheBthesisBthereitsBthatsBthatiBthanksmaybeBtextsBtestsiBtestsBtermsiBtermBtenseBtendB
teenagersiB	teenagersBteenageBtearsiBtearsBtearingBteacherBtasktheBtaskoneBtaskBtargetedBtallBtakingBtakeniBtabooB	tablewhenBtableBsyndromeBsurroundingsB
surroundedBsupermarketBsuperiorB	sufferingBsuddenlyBsuccessBstudiesBstrongBstrollerB	stressfulBstressBstrengthBstoreBstopthankfullyBstopsBstoppingBstoodBstoneBstocktheBstockdespiteBstewardsBsteppedBstepBstayingBstayBstatusB	startwhatBstartmyBstaredBstareBstandsBstandingBstammerBstaffBspitsBspeedB	specifiedBspeakingBsoundingBsoundedBsoonthisBsonBsnippyBsnappedBsmallitBsmBslutitBslutBslowsBslowlyBslowBslapBskiniBsituationweBsituationssceneB
situationiBsisteriBsimpleBsienaoneBshowsBshowingB
shoutingheBshoutingandBshoutediBshoutBshopBshittyBshesBsheetsBshamefulBshameBsexistBsexBserviceB	seriouslyBseriousB	separatedBsenseBselfishBselfdeprecatinglyB	selectiveBseenBseemedBseeingB	secretaryBsecondBscreamBscooterBscaredheBsafeBrunningBrulesBrudleyBrudesheBroutineBrollsBroleBroadheBriskBrightiBrideBrevisingBreverseB	returningBreturnBrestauranttheBrestaurantbecauseBrespondsBrespectBreservedandBreserveB
rescheduleBrequestBreportB
repeatedlyBrenewBremotelyBremainsBremainedB	reluctantB
relationalB	rejectionB
regardlessB	regardingBrefuseBreferBreelaboratedBrecoveryB	receivingB	reasoningBreasonB	rearrangeBreactionBreactedBreactBratherBraisesBraisedBraiseBquittingBquickenBquetlyBqueiBquarrelBputsBpushedBpunchiBpulledB
protectionBproperlyBprogrammediBprofessionalB
prioritiesBpriorB	principalBpreviousBpresentBpresenceBpregnantB
precedenceB	possibleiBpossibleB	positionsBpointsBpleasedBplateBpickingBphoneB
pharmacyatBpharmacyBpersonsBperiodiB	perceivedBpeopleitBpeopleatBpaymentiBpavilionB	patientsiB	patientlyBpathB	passportiB	passengerBpassedBpartyB	partnerweB	partnerheBparticularlyBparticipantsBparkingBparkedBparalyzeBpainBpaduaBpaceiBpaceBownthereBovertakeBoutsideB	organizedBorganizationB
organisingBorderingBoppositeBopinionsBopensBopenlyB	oninsteadBonceBokayB	offensiveBoffendsB	offendingBoccasionallyBobsceneBobjectivelyBoanB	numericalBnoyBnoticedBnoticeBnotiBnorBnonsenseBnoneBnightBnicelycBnicelyBnervousBnegativeBneededaBnearBnamingBnamesB
myselfthisBmuzzleBmutualBmustBmumblingBmuchitBmuchheBmovesBmoveiBmouthBmotheriBmostlyB
mortifiediBmortificationB
moralisticBmoodBmonthsiBmoderateBmischievousBmineweBmineiBmicheleBmexicanBmethisBmetheyBmessageswhichB
mesecondlyBmentalBmenheBmemberB	meinsteadBmeinsideBmeinBmeevenBmediateBmeatBmeantBmeaningBmayBmatureBmattersBmatterBmatchedBmasterBmaskitBmarioBmarginB	manoeuvreBmannerBmanagementheB
managementBmanageBmaleBmakingBmachineiBlowerBloudlyiBlotsBlotiBlostheBlongerBloggedBlockedBlocalBlivingBliveBlistensBlisteniBlistenedBlistenatBlistenBlineiBlineandBlineaBlikesoBlightheartedBliftBlifeBlevelBlessBlesbiansBlentBleiBleftiBledBleavesiBleadB	laughingiBlaughBlaterBlatelyB	languageiBlaneheBlackingBlackBknownBknowingBknockBknewBkindthisBkindandBkidsBkenneliBjustifyBjustificationB	junctioniBjobsBjobeveryBjobbyBjeopardizingBi’llBiveBitwhileBitwhenBittheBitiBitemBitandBitalytheBisweBisntB	irritatedBinvolvedBinvoluntarilyBinviteB	intimatedB	interveneBinterlocutorperhapsB	interfereBinterestediB
interestedB
insultstheBinsultsiBinsultedBinstinctivelyBinsteadBinstanceBinsistsBinsideBinsensitiveBinputBinformationBinformalsheBinferiorB
indirectlyB	indicatedBindicateBindependenceB
indelicacyB	increasesB	incorrectB	includingBincludedBimpressioninB
implicatedBimagineBignorantBideaiBideaBhusbandBhundredsBhumiliatingBhouseworkthisBhousemyBhouseiBhoursBhotB	hostessesBhostessBhopedBhopeBhonksBhonkingBhometownBhomeheBhomeandBhomeaBholidaysBhimwhenBhimnotBhimiBhimbutBhimatBhighBheyBhersheBhelpedBhelpBheldforBheldBheavyhandedBheavyBhearstopB
healthcareBheadedsoBheadBhasntBhardlyBhappyiB
happenthisBhappeningwhenB	happenediBhandstheBhandsheBhandsBguyimBgrownBgroupsB
gratuitousBgrandmothersBgrabsBgoneiBgoneBgivenB
girlfriendBgentlyBgardenBgameiBgainBfurtherBfuriousBfuckingBfrustratedmanagerB
frustratedBfrozenBfriendweB
friendshipB	friendsheBfrequentBfreezeBfreelanceriB
freelancerBforwardBformBforifBforgetBfollowedBfocusBflowingBfingBfilledBfileBffp2BfellBfeetiBfeelsBfedBfearBfatherBfatBfasterBfastB	farmhouseBfamilyBfamiliesBfallBfaintBfacialBeyesBextraneousnessBexpressionthenBexplainsBexperienceratherBexpectedBexpectB	excessiveBexamsBevilBeverywhereaBeveryonemostBeveryB	ethicallyBetciBestablishmentBepisodesBenvironmentsoBentranceBentirelyBentireBenterBensuiteB
enoughthisB
enoughhereBenergyBendedB	encounterBemptysoBemployedBembassyBembarrassmentBembarrassingBembarrassedBemailingBemailBelseimBegocentrismB	eatingtheBeatingBeatBeasilyBeachBdustBdueBdrugsBdrugBdroveBdropB	drivingimBdrinkingBdressingBdressBdrawBdowntheBdotheBdon’tBdoheBdoctorsBdobutB	disucsionBdistanceBdisrespectfulmyBdisrespectfulB
disorderlyB	dismissesBdismayedBdisheartenedB
discussionBdisappearediBdinnersBdinnerBdifficultiesBdifferentfirstBdicussedBdicksatBdespiteB	desperateBdeskheBdescribeBderisiveB
demolishedB
definitelyBdefendBdefenceBdeeplyBdealBdeadlineBdayitBdaughterBdatingBdatedBdataBcutB	customersBcrowdedsuddenlyBcrossingmarioBcriticizingBcrazyBcovidirritatedBcovidBcountersBcounterBcouldntBcouchB	correctlyB
correctingBcorrectiBcontraryBcontractB	continuesB
contendersB	contactheB
consideredB
conscienceB
confrontedBconfrontationBconflicttheyBcomposedBcomplicatingBcomplicatedB
completelyBcompleteBcomplainBcompensationB
comparableBcommentBcomfortableiBcolorfulB	collegeimBcoldsoBcoldB
cocksuckerBcockheBclothesBcloserBclosenessinBclichéB
classmatesBclamlyBclaimedBcityimB	christmasBchoseBchoosingBchewingBcheckoutBcheckingBcheckBchatweB	chattingaBchattingBchaseiBchaoticBchangeBcentreBcenteriBcaughtBcatchBcartBcarsBcannotBcallB
businessheBbumpBbroughtBbrokeBbroccoliBbrakingBbrakesBboyseveryoneBboyfriendsuddenlyBboundaryBboardBblamedBbitiBbitesBbiteB
bitchsinceBbitchmyBbitchiBbitchesBbirthdayBbetteriBbetterBbestsheBbesideBbenchesBbelongsBbelongedB
behaviouriB	behaviourBbehaviorB	beginningBbeginBbeforehoweverBbeatingBbathroomBbaroneBbackingBbackiBbackheBbackedBawayiBawayheBawayatBawareBavailablethisB	availableB
authorizesBattemptBattackB
atmosphereBassumedBassociationismB	assistingBassignedBasleepBaskingBarriveBaroseBarmBarguedBareaBapproachingtheBapproachingB
approachedBapproachBappointmentiBapplyBappearedB
apologizedBapologisingBanywayBanythingtheB
anymoreandB	annoyedatB	angryjustBangryheB
angrilybadBangrilyB
angermaybeBangeriB
angerangerBamongBamazedBalthoughBalotB	alongsideBaloneheBaloneBalmostBallowBalcoholBaimedBagoiBagitatedBaggressivesheBagedBagainstBagainiBagainallBafterwardswhilstB	afternoonBaffordBadvisorBadviceB	advantageBaddedBaddBacquaintanceBaccusingB	accidentsB
acceptableBacceptBacceleratesBabusingBabruptlyBaboutsheB60sB4pmB45B40B30B3B20B2B1pmB15B14
�_
Const_1Const*
_output_shapes	
:�*
dtype0	*�^
value�^B�^	�"�^                                                 	       
                                                                                                                                                                  !       "       #       $       %       &       '       (       )       *       +       ,       -       .       /       0       1       2       3       4       5       6       7       8       9       :       ;       <       =       >       ?       @       A       B       C       D       E       F       G       H       I       J       K       L       M       N       O       P       Q       R       S       T       U       V       W       X       Y       Z       [       \       ]       ^       _       `       a       b       c       d       e       f       g       h       i       j       k       l       m       n       o       p       q       r       s       t       u       v       w       x       y       z       {       |       }       ~              �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �                                                              	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      
I
Const_2Const*
_output_shapes
: *
dtype0	*
value	B	 R 
I
Const_3Const*
_output_shapes
: *
dtype0	*
value	B	 R 
H
Const_4Const*
_output_shapes
: *
dtype0*
valueB B 
I
Const_5Const*
_output_shapes
: *
dtype0	*
value	B	 R
�
Adam/dense_11/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_11/bias/v
y
(Adam/dense_11/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_11/bias/v*
_output_shapes
:*
dtype0
�
Adam/dense_11/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *'
shared_nameAdam/dense_11/kernel/v
�
*Adam/dense_11/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_11/kernel/v*
_output_shapes

: *
dtype0
�
Adam/dense_10/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *%
shared_nameAdam/dense_10/bias/v
y
(Adam/dense_10/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_10/bias/v*
_output_shapes
: *
dtype0
�
Adam/dense_10/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@ *'
shared_nameAdam/dense_10/kernel/v
�
*Adam/dense_10/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_10/kernel/v*
_output_shapes

:@ *
dtype0
~
Adam/dense_9/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*$
shared_nameAdam/dense_9/bias/v
w
'Adam/dense_9/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_9/bias/v*
_output_shapes
:@*
dtype0
�
Adam/dense_9/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*&
shared_nameAdam/dense_9/kernel/v

)Adam/dense_9/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_9/kernel/v*
_output_shapes

:@*
dtype0
�
Adam/embedding/embeddings/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�N*,
shared_nameAdam/embedding/embeddings/v
�
/Adam/embedding/embeddings/v/Read/ReadVariableOpReadVariableOpAdam/embedding/embeddings/v*
_output_shapes
:	�N*
dtype0
�
Adam/dense_11/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_11/bias/m
y
(Adam/dense_11/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_11/bias/m*
_output_shapes
:*
dtype0
�
Adam/dense_11/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *'
shared_nameAdam/dense_11/kernel/m
�
*Adam/dense_11/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_11/kernel/m*
_output_shapes

: *
dtype0
�
Adam/dense_10/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *%
shared_nameAdam/dense_10/bias/m
y
(Adam/dense_10/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_10/bias/m*
_output_shapes
: *
dtype0
�
Adam/dense_10/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@ *'
shared_nameAdam/dense_10/kernel/m
�
*Adam/dense_10/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_10/kernel/m*
_output_shapes

:@ *
dtype0
~
Adam/dense_9/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*$
shared_nameAdam/dense_9/bias/m
w
'Adam/dense_9/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_9/bias/m*
_output_shapes
:@*
dtype0
�
Adam/dense_9/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*&
shared_nameAdam/dense_9/kernel/m

)Adam/dense_9/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_9/kernel/m*
_output_shapes

:@*
dtype0
�
Adam/embedding/embeddings/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�N*,
shared_nameAdam/embedding/embeddings/m
�
/Adam/embedding/embeddings/m/Read/ReadVariableOpReadVariableOpAdam/embedding/embeddings/m*
_output_shapes
:	�N*
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
�
MutableHashTableMutableHashTableV2*
_output_shapes
: *
	key_dtype0*
shared_nametable_59638*
value_dtype0	
m

hash_tableHashTableV2*
_output_shapes
: *
	key_dtype0*
shared_name60297*
value_dtype0	
x
Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
j
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
r
dense_11/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_11/bias
k
!dense_11/bias/Read/ReadVariableOpReadVariableOpdense_11/bias*
_output_shapes
:*
dtype0
z
dense_11/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: * 
shared_namedense_11/kernel
s
#dense_11/kernel/Read/ReadVariableOpReadVariableOpdense_11/kernel*
_output_shapes

: *
dtype0
r
dense_10/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namedense_10/bias
k
!dense_10/bias/Read/ReadVariableOpReadVariableOpdense_10/bias*
_output_shapes
: *
dtype0
z
dense_10/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@ * 
shared_namedense_10/kernel
s
#dense_10/kernel/Read/ReadVariableOpReadVariableOpdense_10/kernel*
_output_shapes

:@ *
dtype0
p
dense_9/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_namedense_9/bias
i
 dense_9/bias/Read/ReadVariableOpReadVariableOpdense_9/bias*
_output_shapes
:@*
dtype0
x
dense_9/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*
shared_namedense_9/kernel
q
"dense_9/kernel/Read/ReadVariableOpReadVariableOpdense_9/kernel*
_output_shapes

:@*
dtype0
�
embedding/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�N*%
shared_nameembedding/embeddings
~
(embedding/embeddings/Read/ReadVariableOpReadVariableOpembedding/embeddings*
_output_shapes
:	�N*
dtype0
s
serving_default_examplesPlaceholder*#
_output_shapes
:���������*
dtype0*
shape:���������
�
StatefulPartitionedCallStatefulPartitionedCallserving_default_examples
hash_tableConst_5Const_4Const_3embedding/embeddingsdense_9/kerneldense_9/biasdense_10/kerneldense_10/biasdense_11/kerneldense_11/bias*
Tin
2		*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*)
_read_only_resource_inputs
		
*-
config_proto

CPU

GPU 2J 8� *,
f'R%
#__inference_signature_wrapper_63491
�
StatefulPartitionedCall_1StatefulPartitionedCall
hash_tableConstConst_1*
Tin
2	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *'
f"R 
__inference__initializer_64496
�
PartitionedCallPartitionedCall*	
Tin
 *
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *'
f"R 
__inference__initializer_64511
:
NoOpNoOp^PartitionedCall^StatefulPartitionedCall_1
�
?MutableHashTable_lookup_table_export_values/LookupTableExportV2LookupTableExportV2MutableHashTable*
Tkeys0*
Tvalues0	*#
_class
loc:@MutableHashTable*
_output_shapes

::
�K
Const_6Const"/device:CPU:0*
_output_shapes
: *
dtype0*�K
value�KB�K B�J
�
layer-0
layer-1
layer_with_weights-0
layer-2
layer_with_weights-1
layer-3
layer-4
layer_with_weights-2
layer-5
layer_with_weights-3
layer-6
layer_with_weights-4
layer-7
	layer-8

	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer
		tft_layer

signatures*
* 

	keras_api* 
;
	keras_api
_lookup_layer
_adapt_function*
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

embeddings*
�
	variables
trainable_variables
 regularization_losses
!	keras_api
"__call__
*#&call_and_return_all_conditional_losses* 
�
$	variables
%trainable_variables
&regularization_losses
'	keras_api
(__call__
*)&call_and_return_all_conditional_losses

*kernel
+bias*
�
,	variables
-trainable_variables
.regularization_losses
/	keras_api
0__call__
*1&call_and_return_all_conditional_losses

2kernel
3bias*
�
4	variables
5trainable_variables
6regularization_losses
7	keras_api
8__call__
*9&call_and_return_all_conditional_losses

:kernel
;bias*
�
<	variables
=trainable_variables
>regularization_losses
?	keras_api
@__call__
*A&call_and_return_all_conditional_losses
$B _saved_model_loader_tracked_dict* 
5
1
*2
+3
24
35
:6
;7*
5
0
*1
+2
23
34
:5
;6*
* 
�
Cnon_trainable_variables

Dlayers
Emetrics
Flayer_regularization_losses
Glayer_metrics

	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
6
Htrace_0
Itrace_1
Jtrace_2
Ktrace_3* 
6
Ltrace_0
Mtrace_1
Ntrace_2
Otrace_3* 
/
P	capture_1
Q	capture_2
R	capture_3* 
�
Siter

Tbeta_1

Ubeta_2
	Vdecay
Wlearning_ratem�*m�+m�2m�3m�:m�;m�v�*v�+v�2v�3v�:v�;v�*

Xserving_default* 
* 
* 
7
Y	keras_api
Zlookup_table
[token_counts*

\trace_0* 

0*

0*
* 
�
]non_trainable_variables

^layers
_metrics
`layer_regularization_losses
alayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

btrace_0* 

ctrace_0* 
hb
VARIABLE_VALUEembedding/embeddings:layer_with_weights-1/embeddings/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
�
dnon_trainable_variables

elayers
fmetrics
glayer_regularization_losses
hlayer_metrics
	variables
trainable_variables
 regularization_losses
"__call__
*#&call_and_return_all_conditional_losses
&#"call_and_return_conditional_losses* 

itrace_0* 

jtrace_0* 

*0
+1*

*0
+1*
* 
�
knon_trainable_variables

llayers
mmetrics
nlayer_regularization_losses
olayer_metrics
$	variables
%trainable_variables
&regularization_losses
(__call__
*)&call_and_return_all_conditional_losses
&)"call_and_return_conditional_losses*

ptrace_0* 

qtrace_0* 
^X
VARIABLE_VALUEdense_9/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEdense_9/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*

20
31*

20
31*
* 
�
rnon_trainable_variables

slayers
tmetrics
ulayer_regularization_losses
vlayer_metrics
,	variables
-trainable_variables
.regularization_losses
0__call__
*1&call_and_return_all_conditional_losses
&1"call_and_return_conditional_losses*

wtrace_0* 

xtrace_0* 
_Y
VARIABLE_VALUEdense_10/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_10/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE*

:0
;1*

:0
;1*
* 
�
ynon_trainable_variables

zlayers
{metrics
|layer_regularization_losses
}layer_metrics
4	variables
5trainable_variables
6regularization_losses
8__call__
*9&call_and_return_all_conditional_losses
&9"call_and_return_conditional_losses*

~trace_0* 

trace_0* 
_Y
VARIABLE_VALUEdense_11/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_11/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
<	variables
=trainable_variables
>regularization_losses
@__call__
*A&call_and_return_all_conditional_losses
&A"call_and_return_conditional_losses* 

�trace_0
�trace_1* 

�trace_0
�trace_1* 
y
�	_imported
�_wrapped_function
�_structured_inputs
�_structured_outputs
�_output_to_inputs_map* 
* 
C
0
1
2
3
4
5
6
7
	8*

�0
�1*
* 
* 
/
P	capture_1
Q	capture_2
R	capture_3* 
/
P	capture_1
Q	capture_2
R	capture_3* 
/
P	capture_1
Q	capture_2
R	capture_3* 
/
P	capture_1
Q	capture_2
R	capture_3* 
/
P	capture_1
Q	capture_2
R	capture_3* 
/
P	capture_1
Q	capture_2
R	capture_3* 
/
P	capture_1
Q	capture_2
R	capture_3* 
/
P	capture_1
Q	capture_2
R	capture_3* 
* 
* 
* 
LF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
/
P	capture_1
Q	capture_2
R	capture_3* 
* 
V
�_initializer
�_create_resource
�_initialize
�_destroy_resource* 
�
�_create_resource
�_initialize
�_destroy_resourceJ
tableAlayer_with_weights-0/_lookup_layer/token_counts/.ATTRIBUTES/table*

�	capture_1* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
�
�created_variables
�	resources
�trackable_objects
�initializers
�assets
�
signatures
$�_self_saveable_object_factories
�transform_fn* 
* 
* 
* 
* 
<
�	variables
�	keras_api

�total

�count*
M
�	variables
�	keras_api

�total

�count
�
_fn_kwargs*
* 

�trace_0* 

�trace_0* 

�trace_0* 

�trace_0* 

�trace_0* 

�trace_0* 
* 
* 
* 
* 
* 
* 

�serving_default* 
* 

�0
�1*

�	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

�0
�1*

�	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
"
�	capture_1
�	capture_2* 
* 
* 
* 
* 
* 
* 
* 
��
VARIABLE_VALUEAdam/embedding/embeddings/mVlayer_with_weights-1/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�{
VARIABLE_VALUEAdam/dense_9/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUEAdam/dense_9/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�|
VARIABLE_VALUEAdam/dense_10/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_10/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�|
VARIABLE_VALUEAdam/dense_11/kernel/mRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_11/bias/mPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUEAdam/embedding/embeddings/vVlayer_with_weights-1/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�{
VARIABLE_VALUEAdam/dense_9/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUEAdam/dense_9/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�|
VARIABLE_VALUEAdam/dense_10/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_10/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�|
VARIABLE_VALUEAdam/dense_11/kernel/vRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_11/bias/vPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filename(embedding/embeddings/Read/ReadVariableOp"dense_9/kernel/Read/ReadVariableOp dense_9/bias/Read/ReadVariableOp#dense_10/kernel/Read/ReadVariableOp!dense_10/bias/Read/ReadVariableOp#dense_11/kernel/Read/ReadVariableOp!dense_11/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp?MutableHashTable_lookup_table_export_values/LookupTableExportV2AMutableHashTable_lookup_table_export_values/LookupTableExportV2:1total_1/Read/ReadVariableOpcount_1/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp/Adam/embedding/embeddings/m/Read/ReadVariableOp)Adam/dense_9/kernel/m/Read/ReadVariableOp'Adam/dense_9/bias/m/Read/ReadVariableOp*Adam/dense_10/kernel/m/Read/ReadVariableOp(Adam/dense_10/bias/m/Read/ReadVariableOp*Adam/dense_11/kernel/m/Read/ReadVariableOp(Adam/dense_11/bias/m/Read/ReadVariableOp/Adam/embedding/embeddings/v/Read/ReadVariableOp)Adam/dense_9/kernel/v/Read/ReadVariableOp'Adam/dense_9/bias/v/Read/ReadVariableOp*Adam/dense_10/kernel/v/Read/ReadVariableOp(Adam/dense_10/bias/v/Read/ReadVariableOp*Adam/dense_11/kernel/v/Read/ReadVariableOp(Adam/dense_11/bias/v/Read/ReadVariableOpConst_6*-
Tin&
$2"		*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *'
f"R 
__inference__traced_save_64671
�
StatefulPartitionedCall_3StatefulPartitionedCallsaver_filenameembedding/embeddingsdense_9/kerneldense_9/biasdense_10/kerneldense_10/biasdense_11/kerneldense_11/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_rateMutableHashTabletotal_1count_1totalcountAdam/embedding/embeddings/mAdam/dense_9/kernel/mAdam/dense_9/bias/mAdam/dense_10/kernel/mAdam/dense_10/bias/mAdam/dense_11/kernel/mAdam/dense_11/bias/mAdam/embedding/embeddings/vAdam/dense_9/kernel/vAdam/dense_9/bias/vAdam/dense_10/kernel/vAdam/dense_10/bias/vAdam/dense_11/kernel/vAdam/dense_11/bias/v*+
Tin$
"2 *
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� **
f%R#
!__inference__traced_restore_64783��
�
q
U__inference_global_average_pooling1d_3_layer_call_and_return_conditional_losses_63585

inputs
identityX
Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :p
MeanMeaninputsMean/reduction_indices:output:0*
T0*0
_output_shapes
:������������������^
IdentityIdentityMean:output:0*
T0*0
_output_shapes
:������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):'���������������������������:e a
=
_output_shapes+
):'���������������������������
 
_user_specified_nameinputs
�
F
__inference__creator_64506
identity: ��MutableHashTable�
MutableHashTableMutableHashTableV2*
_output_shapes
: *
	key_dtype0*
shared_nametable_59638*
value_dtype0	]
IdentityIdentityMutableHashTable:table_handle:0^NoOp*
T0*
_output_shapes
: Y
NoOpNoOp^MutableHashTable*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 2$
MutableHashTableMutableHashTable
�
,
__inference__destroyer_64501
identityG
ConstConst*
_output_shapes
: *
dtype0*
value	B :E
IdentityIdentityConst:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 
�
V
:__inference_global_average_pooling1d_3_layer_call_fn_64391

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:������������������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *^
fYRW
U__inference_global_average_pooling1d_3_layer_call_and_return_conditional_losses_63585i
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):'���������������������������:e a
=
_output_shapes+
):'���������������������������
 
_user_specified_nameinputs
�

�
#__inference_signature_wrapper_63491
examples
unknown
	unknown_0	
	unknown_1
	unknown_2	
	unknown_3:	�N
	unknown_4:@
	unknown_5:@
	unknown_6:@ 
	unknown_7: 
	unknown_8: 
	unknown_9:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallexamplesunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
Tin
2		*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*)
_read_only_resource_inputs
		
*-
config_proto

CPU

GPU 2J 8� */
f*R(
&__inference_serve_tf_examples_fn_63462o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:���������: : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:M I
#
_output_shapes
:���������
"
_user_specified_name
examples:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
�
]
#__inference_signature_wrapper_63344

inputs	
inputs_1
identity	

identity_1�
PartitionedCallPartitionedCallinputsinputs_1*
Tin
2	*
Tout
2	*:
_output_shapes(
&:���������:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *!
fR
__inference_pruned_63336`
IdentityIdentityPartitionedCall:output:0*
T0	*'
_output_shapes
:���������b

Identity_1IdentityPartitionedCall:output:1*
T0*'
_output_shapes
:���������"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:���������:���������:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs:QM
'
_output_shapes
:���������
"
_user_specified_name
inputs_1
�t
�
B__inference_model_3_layer_call_and_return_conditional_losses_64070
text_xfZ
Vtext_vectorization_3_string_lookup_27_hash_table_lookup_lookuptablefindv2_table_handle[
Wtext_vectorization_3_string_lookup_27_hash_table_lookup_lookuptablefindv2_default_value	1
-text_vectorization_3_string_lookup_27_equal_y4
0text_vectorization_3_string_lookup_27_selectv2_t	"
embedding_64050:	�N
dense_9_64054:@
dense_9_64056:@ 
dense_10_64059:@ 
dense_10_64061:  
dense_11_64064: 
dense_11_64066:
identity�� dense_10/StatefulPartitionedCall� dense_11/StatefulPartitionedCall�dense_9/StatefulPartitionedCall�!embedding/StatefulPartitionedCall�Itext_vectorization_3/string_lookup_27/hash_table_Lookup/LookupTableFindV2m
tf.reshape_3/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
���������{
tf.reshape_3/ReshapeReshapetext_xf#tf.reshape_3/Reshape/shape:output:0*
T0*#
_output_shapes
:���������s
 text_vectorization_3/StringLowerStringLowertf.reshape_3/Reshape:output:0*#
_output_shapes
:����������
'text_vectorization_3/StaticRegexReplaceStaticRegexReplace)text_vectorization_3/StringLower:output:0*#
_output_shapes
:���������*6
pattern+)[!"#$%&()\*\+,-\./:;<=>?@\[\\\]^_`{|}~\']*
rewrite g
&text_vectorization_3/StringSplit/ConstConst*
_output_shapes
: *
dtype0*
valueB B �
.text_vectorization_3/StringSplit/StringSplitV2StringSplitV20text_vectorization_3/StaticRegexReplace:output:0/text_vectorization_3/StringSplit/Const:output:0*<
_output_shapes*
(:���������:���������:�
4text_vectorization_3/StringSplit/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        �
6text_vectorization_3/StringSplit/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       �
6text_vectorization_3/StringSplit/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
.text_vectorization_3/StringSplit/strided_sliceStridedSlice8text_vectorization_3/StringSplit/StringSplitV2:indices:0=text_vectorization_3/StringSplit/strided_slice/stack:output:0?text_vectorization_3/StringSplit/strided_slice/stack_1:output:0?text_vectorization_3/StringSplit/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_mask�
6text_vectorization_3/StringSplit/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: �
8text_vectorization_3/StringSplit/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
8text_vectorization_3/StringSplit/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
0text_vectorization_3/StringSplit/strided_slice_1StridedSlice6text_vectorization_3/StringSplit/StringSplitV2:shape:0?text_vectorization_3/StringSplit/strided_slice_1/stack:output:0Atext_vectorization_3/StringSplit/strided_slice_1/stack_1:output:0Atext_vectorization_3/StringSplit/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask�
Wtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CastCast7text_vectorization_3/StringSplit/strided_slice:output:0*

DstT0*

SrcT0	*#
_output_shapes
:����������
Ytext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1Cast9text_vectorization_3/StringSplit/strided_slice_1:output:0*

DstT0*

SrcT0	*
_output_shapes
: �
atext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ShapeShape[text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0*
T0*
_output_shapes
:�
atext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
`text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ProdProdjtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape:output:0jtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const:output:0*
T0*
_output_shapes
: �
etext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : �
ctext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/GreaterGreateritext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod:output:0ntext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y:output:0*
T0*
_output_shapes
: �
`text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/CastCastgtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater:z:0*

DstT0*

SrcT0
*
_output_shapes
: �
ctext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
_text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaxMax[text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0ltext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1:output:0*
T0*
_output_shapes
: �
atext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/yConst*
_output_shapes
: *
dtype0*
value	B :�
_text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/addAddV2htext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max:output:0jtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y:output:0*
T0*
_output_shapes
: �
_text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mulMuldtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast:y:0ctext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add:z:0*
T0*
_output_shapes
: �
ctext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaximumMaximum]text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0ctext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul:z:0*
T0*
_output_shapes
: �
ctext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MinimumMinimum]text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0gtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum:z:0*
T0*
_output_shapes
: �
ctext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2Const*
_output_shapes
: *
dtype0	*
valueB	 �
itext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
����������
ctext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ReshapeReshape[text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0rtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Reshape/shape:output:0*
T0*#
_output_shapes
:����������
dtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/BincountBincountltext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Reshape:output:0gtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum:z:0ltext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2:output:0*
T0	*#
_output_shapes
:����������
^text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Ytext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CumsumCumsumktext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount:bins:0gtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis:output:0*
T0	*#
_output_shapes
:����������
btext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0Const*
_output_shapes
:*
dtype0	*
valueB	R �
^text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Ytext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concatConcatV2ktext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0:output:0_text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum:out:0gtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis:output:0*
N*
T0	*#
_output_shapes
:����������
Itext_vectorization_3/string_lookup_27/hash_table_Lookup/LookupTableFindV2LookupTableFindV2Vtext_vectorization_3_string_lookup_27_hash_table_lookup_lookuptablefindv2_table_handle7text_vectorization_3/StringSplit/StringSplitV2:values:0Wtext_vectorization_3_string_lookup_27_hash_table_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:����������
+text_vectorization_3/string_lookup_27/EqualEqual7text_vectorization_3/StringSplit/StringSplitV2:values:0-text_vectorization_3_string_lookup_27_equal_y*
T0*#
_output_shapes
:����������
.text_vectorization_3/string_lookup_27/SelectV2SelectV2/text_vectorization_3/string_lookup_27/Equal:z:00text_vectorization_3_string_lookup_27_selectv2_tRtext_vectorization_3/string_lookup_27/hash_table_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:����������
.text_vectorization_3/string_lookup_27/IdentityIdentity7text_vectorization_3/string_lookup_27/SelectV2:output:0*
T0	*#
_output_shapes
:���������s
1text_vectorization_3/RaggedToTensor/default_valueConst*
_output_shapes
: *
dtype0	*
value	B	 R �
)text_vectorization_3/RaggedToTensor/ConstConst*
_output_shapes
:*
dtype0	*%
valueB	"��������d       �
8text_vectorization_3/RaggedToTensor/RaggedTensorToTensorRaggedTensorToTensor2text_vectorization_3/RaggedToTensor/Const:output:07text_vectorization_3/string_lookup_27/Identity:output:0:text_vectorization_3/RaggedToTensor/default_value:output:09text_vectorization_3/StringSplit/strided_slice_1:output:07text_vectorization_3/StringSplit/strided_slice:output:0*
T0	*
Tindex0	*
Tshape0	*'
_output_shapes
:���������d*
num_row_partition_tensors*7
row_partition_types 
FIRST_DIM_SIZEVALUE_ROWIDS�
!embedding/StatefulPartitionedCallStatefulPartitionedCallAtext_vectorization_3/RaggedToTensor/RaggedTensorToTensor:result:0embedding_64050*
Tin
2	*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������d*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_embedding_layer_call_and_return_conditional_losses_63709�
*global_average_pooling1d_3/PartitionedCallPartitionedCall*embedding/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *^
fYRW
U__inference_global_average_pooling1d_3_layer_call_and_return_conditional_losses_63585�
dense_9/StatefulPartitionedCallStatefulPartitionedCall3global_average_pooling1d_3/PartitionedCall:output:0dense_9_64054dense_9_64056*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_dense_9_layer_call_and_return_conditional_losses_63725�
 dense_10/StatefulPartitionedCallStatefulPartitionedCall(dense_9/StatefulPartitionedCall:output:0dense_10_64059dense_10_64061*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:��������� *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_dense_10_layer_call_and_return_conditional_losses_63742�
 dense_11/StatefulPartitionedCallStatefulPartitionedCall)dense_10/StatefulPartitionedCall:output:0dense_11_64064dense_11_64066*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_dense_11_layer_call_and_return_conditional_losses_63759x
IdentityIdentity)dense_11/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp!^dense_10/StatefulPartitionedCall!^dense_11/StatefulPartitionedCall ^dense_9/StatefulPartitionedCall"^embedding/StatefulPartitionedCallJ^text_vectorization_3/string_lookup_27/hash_table_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):���������: : : : : : : : : : : 2D
 dense_10/StatefulPartitionedCall dense_10/StatefulPartitionedCall2D
 dense_11/StatefulPartitionedCall dense_11/StatefulPartitionedCall2B
dense_9/StatefulPartitionedCalldense_9/StatefulPartitionedCall2F
!embedding/StatefulPartitionedCall!embedding/StatefulPartitionedCall2�
Itext_vectorization_3/string_lookup_27/hash_table_Lookup/LookupTableFindV2Itext_vectorization_3/string_lookup_27/hash_table_Lookup/LookupTableFindV2:P L
'
_output_shapes
:���������
!
_user_specified_name	text_xf:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
�
:
__inference__creator_64488
identity��
hash_tablem

hash_tableHashTableV2*
_output_shapes
: *
	key_dtype0*
shared_name60297*
value_dtype0	W
IdentityIdentityhash_table:table_handle:0^NoOp*
T0*
_output_shapes
: S
NoOpNoOp^hash_table*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 2

hash_table
hash_table
�}
�
!__inference__traced_restore_64783
file_prefix8
%assignvariableop_embedding_embeddings:	�N3
!assignvariableop_1_dense_9_kernel:@-
assignvariableop_2_dense_9_bias:@4
"assignvariableop_3_dense_10_kernel:@ .
 assignvariableop_4_dense_10_bias: 4
"assignvariableop_5_dense_11_kernel: .
 assignvariableop_6_dense_11_bias:&
assignvariableop_7_adam_iter:	 (
assignvariableop_8_adam_beta_1: (
assignvariableop_9_adam_beta_2: (
assignvariableop_10_adam_decay: 0
&assignvariableop_11_adam_learning_rate: 
mutablehashtable: %
assignvariableop_12_total_1: %
assignvariableop_13_count_1: #
assignvariableop_14_total: #
assignvariableop_15_count: B
/assignvariableop_16_adam_embedding_embeddings_m:	�N;
)assignvariableop_17_adam_dense_9_kernel_m:@5
'assignvariableop_18_adam_dense_9_bias_m:@<
*assignvariableop_19_adam_dense_10_kernel_m:@ 6
(assignvariableop_20_adam_dense_10_bias_m: <
*assignvariableop_21_adam_dense_11_kernel_m: 6
(assignvariableop_22_adam_dense_11_bias_m:B
/assignvariableop_23_adam_embedding_embeddings_v:	�N;
)assignvariableop_24_adam_dense_9_kernel_v:@5
'assignvariableop_25_adam_dense_9_bias_v:@<
*assignvariableop_26_adam_dense_10_kernel_v:@ 6
(assignvariableop_27_adam_dense_10_bias_v: <
*assignvariableop_28_adam_dense_11_kernel_v: 6
(assignvariableop_29_adam_dense_11_bias_v:
identity_31��AssignVariableOp�AssignVariableOp_1�AssignVariableOp_10�AssignVariableOp_11�AssignVariableOp_12�AssignVariableOp_13�AssignVariableOp_14�AssignVariableOp_15�AssignVariableOp_16�AssignVariableOp_17�AssignVariableOp_18�AssignVariableOp_19�AssignVariableOp_2�AssignVariableOp_20�AssignVariableOp_21�AssignVariableOp_22�AssignVariableOp_23�AssignVariableOp_24�AssignVariableOp_25�AssignVariableOp_26�AssignVariableOp_27�AssignVariableOp_28�AssignVariableOp_29�AssignVariableOp_3�AssignVariableOp_4�AssignVariableOp_5�AssignVariableOp_6�AssignVariableOp_7�AssignVariableOp_8�AssignVariableOp_9�StatefulPartitionedCall�
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:!*
dtype0*�
value�B�!B:layer_with_weights-1/embeddings/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEBFlayer_with_weights-0/_lookup_layer/token_counts/.ATTRIBUTES/table-keysBHlayer_with_weights-0/_lookup_layer/token_counts/.ATTRIBUTES/table-valuesB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:!*
dtype0*U
valueLBJ!B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B �
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*�
_output_shapes�
�:::::::::::::::::::::::::::::::::*/
dtypes%
#2!		[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOpAssignVariableOp%assignvariableop_embedding_embeddingsIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_1AssignVariableOp!assignvariableop_1_dense_9_kernelIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_2AssignVariableOpassignvariableop_2_dense_9_biasIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_3AssignVariableOp"assignvariableop_3_dense_10_kernelIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_4AssignVariableOp assignvariableop_4_dense_10_biasIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_5AssignVariableOp"assignvariableop_5_dense_11_kernelIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_6AssignVariableOp assignvariableop_6_dense_11_biasIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0	*
_output_shapes
:�
AssignVariableOp_7AssignVariableOpassignvariableop_7_adam_iterIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_8AssignVariableOpassignvariableop_8_adam_beta_1Identity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_9AssignVariableOpassignvariableop_9_adam_beta_2Identity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_10AssignVariableOpassignvariableop_10_adam_decayIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_11AssignVariableOp&assignvariableop_11_adam_learning_rateIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0�
StatefulPartitionedCallStatefulPartitionedCallmutablehashtableRestoreV2:tensors:12RestoreV2:tensors:13"/device:CPU:0*
Tin
2	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� */
f*R(
&__inference_restore_from_tensors_64742_
Identity_12IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_12AssignVariableOpassignvariableop_12_total_1Identity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_13AssignVariableOpassignvariableop_13_count_1Identity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_14AssignVariableOpassignvariableop_14_totalIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_15AssignVariableOpassignvariableop_15_countIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_16AssignVariableOp/assignvariableop_16_adam_embedding_embeddings_mIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_17AssignVariableOp)assignvariableop_17_adam_dense_9_kernel_mIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_18AssignVariableOp'assignvariableop_18_adam_dense_9_bias_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_19AssignVariableOp*assignvariableop_19_adam_dense_10_kernel_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_20AssignVariableOp(assignvariableop_20_adam_dense_10_bias_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_21AssignVariableOp*assignvariableop_21_adam_dense_11_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_22AssignVariableOp(assignvariableop_22_adam_dense_11_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_23AssignVariableOp/assignvariableop_23_adam_embedding_embeddings_vIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_24AssignVariableOp)assignvariableop_24_adam_dense_9_kernel_vIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_25AssignVariableOp'assignvariableop_25_adam_dense_9_bias_vIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_26AssignVariableOp*assignvariableop_26_adam_dense_10_kernel_vIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_27AssignVariableOp(assignvariableop_27_adam_dense_10_bias_vIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_28AssignVariableOp*assignvariableop_28_adam_dense_11_kernel_vIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_29AssignVariableOp(assignvariableop_29_adam_dense_11_bias_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 �
Identity_30Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp^StatefulPartitionedCall"/device:CPU:0*
T0*
_output_shapes
: W
Identity_31IdentityIdentity_30:output:0^NoOp_1*
T0*
_output_shapes
: �
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "#
identity_31Identity_31:output:0*S
_input_shapesB
@: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_922
StatefulPartitionedCallStatefulPartitionedCall:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
�

�
B__inference_dense_9_layer_call_and_return_conditional_losses_64417

inputs0
matmul_readvariableop_resource:@-
biasadd_readvariableop_resource:@
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:���������@a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:���������@w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�

�
&__inference_restore_from_tensors_64742M
Cmutablehashtable_table_restore_lookuptableimportv2_mutablehashtable: @
<mutablehashtable_table_restore_lookuptableimportv2_restorev2B
>mutablehashtable_table_restore_lookuptableimportv2_restorev2_1	
identity��2MutableHashTable_table_restore/LookupTableImportV2�
2MutableHashTable_table_restore/LookupTableImportV2LookupTableImportV2Cmutablehashtable_table_restore_lookuptableimportv2_mutablehashtable<mutablehashtable_table_restore_lookuptableimportv2_restorev2>mutablehashtable_table_restore_lookuptableimportv2_restorev2_1*	
Tin0*

Tout0	*#
_class
loc:@MutableHashTable*
_output_shapes
 G
ConstConst*
_output_shapes
: *
dtype0*
value	B :L
IdentityIdentityConst:output:0^NoOp*
T0*
_output_shapes
: {
NoOpNoOp3^MutableHashTable_table_restore/LookupTableImportV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*
_input_shapes

: ::2h
2MutableHashTable_table_restore/LookupTableImportV22MutableHashTable_table_restore/LookupTableImportV2:) %
#
_class
loc:@MutableHashTable:C?
#
_class
loc:@MutableHashTable

_output_shapes
::C?
#
_class
loc:@MutableHashTable

_output_shapes
:
�t
�
B__inference_model_3_layer_call_and_return_conditional_losses_64144
text_xfZ
Vtext_vectorization_3_string_lookup_27_hash_table_lookup_lookuptablefindv2_table_handle[
Wtext_vectorization_3_string_lookup_27_hash_table_lookup_lookuptablefindv2_default_value	1
-text_vectorization_3_string_lookup_27_equal_y4
0text_vectorization_3_string_lookup_27_selectv2_t	"
embedding_64124:	�N
dense_9_64128:@
dense_9_64130:@ 
dense_10_64133:@ 
dense_10_64135:  
dense_11_64138: 
dense_11_64140:
identity�� dense_10/StatefulPartitionedCall� dense_11/StatefulPartitionedCall�dense_9/StatefulPartitionedCall�!embedding/StatefulPartitionedCall�Itext_vectorization_3/string_lookup_27/hash_table_Lookup/LookupTableFindV2m
tf.reshape_3/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
���������{
tf.reshape_3/ReshapeReshapetext_xf#tf.reshape_3/Reshape/shape:output:0*
T0*#
_output_shapes
:���������s
 text_vectorization_3/StringLowerStringLowertf.reshape_3/Reshape:output:0*#
_output_shapes
:����������
'text_vectorization_3/StaticRegexReplaceStaticRegexReplace)text_vectorization_3/StringLower:output:0*#
_output_shapes
:���������*6
pattern+)[!"#$%&()\*\+,-\./:;<=>?@\[\\\]^_`{|}~\']*
rewrite g
&text_vectorization_3/StringSplit/ConstConst*
_output_shapes
: *
dtype0*
valueB B �
.text_vectorization_3/StringSplit/StringSplitV2StringSplitV20text_vectorization_3/StaticRegexReplace:output:0/text_vectorization_3/StringSplit/Const:output:0*<
_output_shapes*
(:���������:���������:�
4text_vectorization_3/StringSplit/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        �
6text_vectorization_3/StringSplit/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       �
6text_vectorization_3/StringSplit/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
.text_vectorization_3/StringSplit/strided_sliceStridedSlice8text_vectorization_3/StringSplit/StringSplitV2:indices:0=text_vectorization_3/StringSplit/strided_slice/stack:output:0?text_vectorization_3/StringSplit/strided_slice/stack_1:output:0?text_vectorization_3/StringSplit/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_mask�
6text_vectorization_3/StringSplit/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: �
8text_vectorization_3/StringSplit/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
8text_vectorization_3/StringSplit/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
0text_vectorization_3/StringSplit/strided_slice_1StridedSlice6text_vectorization_3/StringSplit/StringSplitV2:shape:0?text_vectorization_3/StringSplit/strided_slice_1/stack:output:0Atext_vectorization_3/StringSplit/strided_slice_1/stack_1:output:0Atext_vectorization_3/StringSplit/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask�
Wtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CastCast7text_vectorization_3/StringSplit/strided_slice:output:0*

DstT0*

SrcT0	*#
_output_shapes
:����������
Ytext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1Cast9text_vectorization_3/StringSplit/strided_slice_1:output:0*

DstT0*

SrcT0	*
_output_shapes
: �
atext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ShapeShape[text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0*
T0*
_output_shapes
:�
atext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
`text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ProdProdjtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape:output:0jtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const:output:0*
T0*
_output_shapes
: �
etext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : �
ctext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/GreaterGreateritext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod:output:0ntext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y:output:0*
T0*
_output_shapes
: �
`text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/CastCastgtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater:z:0*

DstT0*

SrcT0
*
_output_shapes
: �
ctext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
_text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaxMax[text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0ltext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1:output:0*
T0*
_output_shapes
: �
atext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/yConst*
_output_shapes
: *
dtype0*
value	B :�
_text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/addAddV2htext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max:output:0jtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y:output:0*
T0*
_output_shapes
: �
_text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mulMuldtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast:y:0ctext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add:z:0*
T0*
_output_shapes
: �
ctext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaximumMaximum]text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0ctext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul:z:0*
T0*
_output_shapes
: �
ctext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MinimumMinimum]text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0gtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum:z:0*
T0*
_output_shapes
: �
ctext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2Const*
_output_shapes
: *
dtype0	*
valueB	 �
itext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
����������
ctext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ReshapeReshape[text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0rtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Reshape/shape:output:0*
T0*#
_output_shapes
:����������
dtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/BincountBincountltext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Reshape:output:0gtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum:z:0ltext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2:output:0*
T0	*#
_output_shapes
:����������
^text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Ytext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CumsumCumsumktext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount:bins:0gtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis:output:0*
T0	*#
_output_shapes
:����������
btext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0Const*
_output_shapes
:*
dtype0	*
valueB	R �
^text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Ytext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concatConcatV2ktext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0:output:0_text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum:out:0gtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis:output:0*
N*
T0	*#
_output_shapes
:����������
Itext_vectorization_3/string_lookup_27/hash_table_Lookup/LookupTableFindV2LookupTableFindV2Vtext_vectorization_3_string_lookup_27_hash_table_lookup_lookuptablefindv2_table_handle7text_vectorization_3/StringSplit/StringSplitV2:values:0Wtext_vectorization_3_string_lookup_27_hash_table_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:����������
+text_vectorization_3/string_lookup_27/EqualEqual7text_vectorization_3/StringSplit/StringSplitV2:values:0-text_vectorization_3_string_lookup_27_equal_y*
T0*#
_output_shapes
:����������
.text_vectorization_3/string_lookup_27/SelectV2SelectV2/text_vectorization_3/string_lookup_27/Equal:z:00text_vectorization_3_string_lookup_27_selectv2_tRtext_vectorization_3/string_lookup_27/hash_table_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:����������
.text_vectorization_3/string_lookup_27/IdentityIdentity7text_vectorization_3/string_lookup_27/SelectV2:output:0*
T0	*#
_output_shapes
:���������s
1text_vectorization_3/RaggedToTensor/default_valueConst*
_output_shapes
: *
dtype0	*
value	B	 R �
)text_vectorization_3/RaggedToTensor/ConstConst*
_output_shapes
:*
dtype0	*%
valueB	"��������d       �
8text_vectorization_3/RaggedToTensor/RaggedTensorToTensorRaggedTensorToTensor2text_vectorization_3/RaggedToTensor/Const:output:07text_vectorization_3/string_lookup_27/Identity:output:0:text_vectorization_3/RaggedToTensor/default_value:output:09text_vectorization_3/StringSplit/strided_slice_1:output:07text_vectorization_3/StringSplit/strided_slice:output:0*
T0	*
Tindex0	*
Tshape0	*'
_output_shapes
:���������d*
num_row_partition_tensors*7
row_partition_types 
FIRST_DIM_SIZEVALUE_ROWIDS�
!embedding/StatefulPartitionedCallStatefulPartitionedCallAtext_vectorization_3/RaggedToTensor/RaggedTensorToTensor:result:0embedding_64124*
Tin
2	*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������d*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_embedding_layer_call_and_return_conditional_losses_63709�
*global_average_pooling1d_3/PartitionedCallPartitionedCall*embedding/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *^
fYRW
U__inference_global_average_pooling1d_3_layer_call_and_return_conditional_losses_63585�
dense_9/StatefulPartitionedCallStatefulPartitionedCall3global_average_pooling1d_3/PartitionedCall:output:0dense_9_64128dense_9_64130*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_dense_9_layer_call_and_return_conditional_losses_63725�
 dense_10/StatefulPartitionedCallStatefulPartitionedCall(dense_9/StatefulPartitionedCall:output:0dense_10_64133dense_10_64135*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:��������� *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_dense_10_layer_call_and_return_conditional_losses_63742�
 dense_11/StatefulPartitionedCallStatefulPartitionedCall)dense_10/StatefulPartitionedCall:output:0dense_11_64138dense_11_64140*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_dense_11_layer_call_and_return_conditional_losses_63759x
IdentityIdentity)dense_11/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp!^dense_10/StatefulPartitionedCall!^dense_11/StatefulPartitionedCall ^dense_9/StatefulPartitionedCall"^embedding/StatefulPartitionedCallJ^text_vectorization_3/string_lookup_27/hash_table_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):���������: : : : : : : : : : : 2D
 dense_10/StatefulPartitionedCall dense_10/StatefulPartitionedCall2D
 dense_11/StatefulPartitionedCall dense_11/StatefulPartitionedCall2B
dense_9/StatefulPartitionedCalldense_9/StatefulPartitionedCall2F
!embedding/StatefulPartitionedCall!embedding/StatefulPartitionedCall2�
Itext_vectorization_3/string_lookup_27/hash_table_Lookup/LookupTableFindV2Itext_vectorization_3/string_lookup_27/hash_table_Lookup/LookupTableFindV2:P L
'
_output_shapes
:���������
!
_user_specified_name	text_xf:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
�
�
D__inference_embedding_layer_call_and_return_conditional_losses_63709

inputs	)
embedding_lookup_63703:	�N
identity��embedding_lookup�
embedding_lookupResourceGatherembedding_lookup_63703inputs*
Tindices0	*)
_class
loc:@embedding_lookup/63703*+
_output_shapes
:���������d*
dtype0�
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0*)
_class
loc:@embedding_lookup/63703*+
_output_shapes
:���������d�
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:���������dw
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*+
_output_shapes
:���������dY
NoOpNoOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:���������d: 2$
embedding_lookupembedding_lookup:O K
'
_output_shapes
:���������d
 
_user_specified_nameinputs
�

�
B__inference_dense_9_layer_call_and_return_conditional_losses_63725

inputs0
matmul_readvariableop_resource:@-
biasadd_readvariableop_resource:@
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:���������@a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:���������@w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�

�
'__inference_model_3_layer_call_fn_63791
text_xf
unknown
	unknown_0	
	unknown_1
	unknown_2	
	unknown_3:	�N
	unknown_4:@
	unknown_5:@
	unknown_6:@ 
	unknown_7: 
	unknown_8: 
	unknown_9:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCalltext_xfunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
Tin
2		*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*)
_read_only_resource_inputs
		
*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_model_3_layer_call_and_return_conditional_losses_63766o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):���������: : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:���������
!
_user_specified_name	text_xf:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
��
�	
 __inference__wrapped_model_63575
text_xfb
^model_3_text_vectorization_3_string_lookup_27_hash_table_lookup_lookuptablefindv2_table_handlec
_model_3_text_vectorization_3_string_lookup_27_hash_table_lookup_lookuptablefindv2_default_value	9
5model_3_text_vectorization_3_string_lookup_27_equal_y<
8model_3_text_vectorization_3_string_lookup_27_selectv2_t	;
(model_3_embedding_embedding_lookup_63546:	�N@
.model_3_dense_9_matmul_readvariableop_resource:@=
/model_3_dense_9_biasadd_readvariableop_resource:@A
/model_3_dense_10_matmul_readvariableop_resource:@ >
0model_3_dense_10_biasadd_readvariableop_resource: A
/model_3_dense_11_matmul_readvariableop_resource: >
0model_3_dense_11_biasadd_readvariableop_resource:
identity��'model_3/dense_10/BiasAdd/ReadVariableOp�&model_3/dense_10/MatMul/ReadVariableOp�'model_3/dense_11/BiasAdd/ReadVariableOp�&model_3/dense_11/MatMul/ReadVariableOp�&model_3/dense_9/BiasAdd/ReadVariableOp�%model_3/dense_9/MatMul/ReadVariableOp�"model_3/embedding/embedding_lookup�Qmodel_3/text_vectorization_3/string_lookup_27/hash_table_Lookup/LookupTableFindV2u
"model_3/tf.reshape_3/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
����������
model_3/tf.reshape_3/ReshapeReshapetext_xf+model_3/tf.reshape_3/Reshape/shape:output:0*
T0*#
_output_shapes
:����������
(model_3/text_vectorization_3/StringLowerStringLower%model_3/tf.reshape_3/Reshape:output:0*#
_output_shapes
:����������
/model_3/text_vectorization_3/StaticRegexReplaceStaticRegexReplace1model_3/text_vectorization_3/StringLower:output:0*#
_output_shapes
:���������*6
pattern+)[!"#$%&()\*\+,-\./:;<=>?@\[\\\]^_`{|}~\']*
rewrite o
.model_3/text_vectorization_3/StringSplit/ConstConst*
_output_shapes
: *
dtype0*
valueB B �
6model_3/text_vectorization_3/StringSplit/StringSplitV2StringSplitV28model_3/text_vectorization_3/StaticRegexReplace:output:07model_3/text_vectorization_3/StringSplit/Const:output:0*<
_output_shapes*
(:���������:���������:�
<model_3/text_vectorization_3/StringSplit/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        �
>model_3/text_vectorization_3/StringSplit/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       �
>model_3/text_vectorization_3/StringSplit/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
6model_3/text_vectorization_3/StringSplit/strided_sliceStridedSlice@model_3/text_vectorization_3/StringSplit/StringSplitV2:indices:0Emodel_3/text_vectorization_3/StringSplit/strided_slice/stack:output:0Gmodel_3/text_vectorization_3/StringSplit/strided_slice/stack_1:output:0Gmodel_3/text_vectorization_3/StringSplit/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_mask�
>model_3/text_vectorization_3/StringSplit/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: �
@model_3/text_vectorization_3/StringSplit/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
@model_3/text_vectorization_3/StringSplit/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
8model_3/text_vectorization_3/StringSplit/strided_slice_1StridedSlice>model_3/text_vectorization_3/StringSplit/StringSplitV2:shape:0Gmodel_3/text_vectorization_3/StringSplit/strided_slice_1/stack:output:0Imodel_3/text_vectorization_3/StringSplit/strided_slice_1/stack_1:output:0Imodel_3/text_vectorization_3/StringSplit/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask�
_model_3/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CastCast?model_3/text_vectorization_3/StringSplit/strided_slice:output:0*

DstT0*

SrcT0	*#
_output_shapes
:����������
amodel_3/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1CastAmodel_3/text_vectorization_3/StringSplit/strided_slice_1:output:0*

DstT0*

SrcT0	*
_output_shapes
: �
imodel_3/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ShapeShapecmodel_3/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0*
T0*
_output_shapes
:�
imodel_3/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
hmodel_3/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ProdProdrmodel_3/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape:output:0rmodel_3/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const:output:0*
T0*
_output_shapes
: �
mmodel_3/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : �
kmodel_3/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/GreaterGreaterqmodel_3/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod:output:0vmodel_3/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y:output:0*
T0*
_output_shapes
: �
hmodel_3/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/CastCastomodel_3/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater:z:0*

DstT0*

SrcT0
*
_output_shapes
: �
kmodel_3/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
gmodel_3/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaxMaxcmodel_3/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0tmodel_3/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1:output:0*
T0*
_output_shapes
: �
imodel_3/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/yConst*
_output_shapes
: *
dtype0*
value	B :�
gmodel_3/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/addAddV2pmodel_3/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max:output:0rmodel_3/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y:output:0*
T0*
_output_shapes
: �
gmodel_3/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mulMullmodel_3/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast:y:0kmodel_3/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add:z:0*
T0*
_output_shapes
: �
kmodel_3/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaximumMaximumemodel_3/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0kmodel_3/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul:z:0*
T0*
_output_shapes
: �
kmodel_3/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MinimumMinimumemodel_3/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0omodel_3/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum:z:0*
T0*
_output_shapes
: �
kmodel_3/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2Const*
_output_shapes
: *
dtype0	*
valueB	 �
qmodel_3/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
����������
kmodel_3/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ReshapeReshapecmodel_3/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0zmodel_3/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Reshape/shape:output:0*
T0*#
_output_shapes
:����������
lmodel_3/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/BincountBincounttmodel_3/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Reshape:output:0omodel_3/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum:z:0tmodel_3/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2:output:0*
T0	*#
_output_shapes
:����������
fmodel_3/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axisConst*
_output_shapes
: *
dtype0*
value	B : �
amodel_3/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CumsumCumsumsmodel_3/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount:bins:0omodel_3/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis:output:0*
T0	*#
_output_shapes
:����������
jmodel_3/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0Const*
_output_shapes
:*
dtype0	*
valueB	R �
fmodel_3/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
amodel_3/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concatConcatV2smodel_3/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0:output:0gmodel_3/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum:out:0omodel_3/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis:output:0*
N*
T0	*#
_output_shapes
:����������
Qmodel_3/text_vectorization_3/string_lookup_27/hash_table_Lookup/LookupTableFindV2LookupTableFindV2^model_3_text_vectorization_3_string_lookup_27_hash_table_lookup_lookuptablefindv2_table_handle?model_3/text_vectorization_3/StringSplit/StringSplitV2:values:0_model_3_text_vectorization_3_string_lookup_27_hash_table_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:����������
3model_3/text_vectorization_3/string_lookup_27/EqualEqual?model_3/text_vectorization_3/StringSplit/StringSplitV2:values:05model_3_text_vectorization_3_string_lookup_27_equal_y*
T0*#
_output_shapes
:����������
6model_3/text_vectorization_3/string_lookup_27/SelectV2SelectV27model_3/text_vectorization_3/string_lookup_27/Equal:z:08model_3_text_vectorization_3_string_lookup_27_selectv2_tZmodel_3/text_vectorization_3/string_lookup_27/hash_table_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:����������
6model_3/text_vectorization_3/string_lookup_27/IdentityIdentity?model_3/text_vectorization_3/string_lookup_27/SelectV2:output:0*
T0	*#
_output_shapes
:���������{
9model_3/text_vectorization_3/RaggedToTensor/default_valueConst*
_output_shapes
: *
dtype0	*
value	B	 R �
1model_3/text_vectorization_3/RaggedToTensor/ConstConst*
_output_shapes
:*
dtype0	*%
valueB	"��������d       �
@model_3/text_vectorization_3/RaggedToTensor/RaggedTensorToTensorRaggedTensorToTensor:model_3/text_vectorization_3/RaggedToTensor/Const:output:0?model_3/text_vectorization_3/string_lookup_27/Identity:output:0Bmodel_3/text_vectorization_3/RaggedToTensor/default_value:output:0Amodel_3/text_vectorization_3/StringSplit/strided_slice_1:output:0?model_3/text_vectorization_3/StringSplit/strided_slice:output:0*
T0	*
Tindex0	*
Tshape0	*'
_output_shapes
:���������d*
num_row_partition_tensors*7
row_partition_types 
FIRST_DIM_SIZEVALUE_ROWIDS�
"model_3/embedding/embedding_lookupResourceGather(model_3_embedding_embedding_lookup_63546Imodel_3/text_vectorization_3/RaggedToTensor/RaggedTensorToTensor:result:0*
Tindices0	*;
_class1
/-loc:@model_3/embedding/embedding_lookup/63546*+
_output_shapes
:���������d*
dtype0�
+model_3/embedding/embedding_lookup/IdentityIdentity+model_3/embedding/embedding_lookup:output:0*
T0*;
_class1
/-loc:@model_3/embedding/embedding_lookup/63546*+
_output_shapes
:���������d�
-model_3/embedding/embedding_lookup/Identity_1Identity4model_3/embedding/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:���������d{
9model_3/global_average_pooling1d_3/Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :�
'model_3/global_average_pooling1d_3/MeanMean6model_3/embedding/embedding_lookup/Identity_1:output:0Bmodel_3/global_average_pooling1d_3/Mean/reduction_indices:output:0*
T0*'
_output_shapes
:����������
%model_3/dense_9/MatMul/ReadVariableOpReadVariableOp.model_3_dense_9_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0�
model_3/dense_9/MatMulMatMul0model_3/global_average_pooling1d_3/Mean:output:0-model_3/dense_9/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@�
&model_3/dense_9/BiasAdd/ReadVariableOpReadVariableOp/model_3_dense_9_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
model_3/dense_9/BiasAddBiasAdd model_3/dense_9/MatMul:product:0.model_3/dense_9/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@p
model_3/dense_9/ReluRelu model_3/dense_9/BiasAdd:output:0*
T0*'
_output_shapes
:���������@�
&model_3/dense_10/MatMul/ReadVariableOpReadVariableOp/model_3_dense_10_matmul_readvariableop_resource*
_output_shapes

:@ *
dtype0�
model_3/dense_10/MatMulMatMul"model_3/dense_9/Relu:activations:0.model_3/dense_10/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� �
'model_3/dense_10/BiasAdd/ReadVariableOpReadVariableOp0model_3_dense_10_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
model_3/dense_10/BiasAddBiasAdd!model_3/dense_10/MatMul:product:0/model_3/dense_10/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� r
model_3/dense_10/ReluRelu!model_3/dense_10/BiasAdd:output:0*
T0*'
_output_shapes
:��������� �
&model_3/dense_11/MatMul/ReadVariableOpReadVariableOp/model_3_dense_11_matmul_readvariableop_resource*
_output_shapes

: *
dtype0�
model_3/dense_11/MatMulMatMul#model_3/dense_10/Relu:activations:0.model_3/dense_11/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
'model_3/dense_11/BiasAdd/ReadVariableOpReadVariableOp0model_3_dense_11_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
model_3/dense_11/BiasAddBiasAdd!model_3/dense_11/MatMul:product:0/model_3/dense_11/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������x
model_3/dense_11/SigmoidSigmoid!model_3/dense_11/BiasAdd:output:0*
T0*'
_output_shapes
:���������k
IdentityIdentitymodel_3/dense_11/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp(^model_3/dense_10/BiasAdd/ReadVariableOp'^model_3/dense_10/MatMul/ReadVariableOp(^model_3/dense_11/BiasAdd/ReadVariableOp'^model_3/dense_11/MatMul/ReadVariableOp'^model_3/dense_9/BiasAdd/ReadVariableOp&^model_3/dense_9/MatMul/ReadVariableOp#^model_3/embedding/embedding_lookupR^model_3/text_vectorization_3/string_lookup_27/hash_table_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):���������: : : : : : : : : : : 2R
'model_3/dense_10/BiasAdd/ReadVariableOp'model_3/dense_10/BiasAdd/ReadVariableOp2P
&model_3/dense_10/MatMul/ReadVariableOp&model_3/dense_10/MatMul/ReadVariableOp2R
'model_3/dense_11/BiasAdd/ReadVariableOp'model_3/dense_11/BiasAdd/ReadVariableOp2P
&model_3/dense_11/MatMul/ReadVariableOp&model_3/dense_11/MatMul/ReadVariableOp2P
&model_3/dense_9/BiasAdd/ReadVariableOp&model_3/dense_9/BiasAdd/ReadVariableOp2N
%model_3/dense_9/MatMul/ReadVariableOp%model_3/dense_9/MatMul/ReadVariableOp2H
"model_3/embedding/embedding_lookup"model_3/embedding/embedding_lookup2�
Qmodel_3/text_vectorization_3/string_lookup_27/hash_table_Lookup/LookupTableFindV2Qmodel_3/text_vectorization_3/string_lookup_27/hash_table_Lookup/LookupTableFindV2:P L
'
_output_shapes
:���������
!
_user_specified_name	text_xf:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
�

�
C__inference_dense_10_layer_call_and_return_conditional_losses_63742

inputs0
matmul_readvariableop_resource:@ -
biasadd_readvariableop_resource: 
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@ *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:��������� a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:��������� w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������@
 
_user_specified_nameinputs
�E
�
__inference__traced_save_64671
file_prefix3
/savev2_embedding_embeddings_read_readvariableop-
)savev2_dense_9_kernel_read_readvariableop+
'savev2_dense_9_bias_read_readvariableop.
*savev2_dense_10_kernel_read_readvariableop,
(savev2_dense_10_bias_read_readvariableop.
*savev2_dense_11_kernel_read_readvariableop,
(savev2_dense_11_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableopJ
Fsavev2_mutablehashtable_lookup_table_export_values_lookuptableexportv2L
Hsavev2_mutablehashtable_lookup_table_export_values_lookuptableexportv2_1	&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop:
6savev2_adam_embedding_embeddings_m_read_readvariableop4
0savev2_adam_dense_9_kernel_m_read_readvariableop2
.savev2_adam_dense_9_bias_m_read_readvariableop5
1savev2_adam_dense_10_kernel_m_read_readvariableop3
/savev2_adam_dense_10_bias_m_read_readvariableop5
1savev2_adam_dense_11_kernel_m_read_readvariableop3
/savev2_adam_dense_11_bias_m_read_readvariableop:
6savev2_adam_embedding_embeddings_v_read_readvariableop4
0savev2_adam_dense_9_kernel_v_read_readvariableop2
.savev2_adam_dense_9_bias_v_read_readvariableop5
1savev2_adam_dense_10_kernel_v_read_readvariableop3
/savev2_adam_dense_10_bias_v_read_readvariableop5
1savev2_adam_dense_11_kernel_v_read_readvariableop3
/savev2_adam_dense_11_bias_v_read_readvariableop
savev2_const_6

identity_1��MergeV2Checkpointsw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part�
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : �
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: �
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:!*
dtype0*�
value�B�!B:layer_with_weights-1/embeddings/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEBFlayer_with_weights-0/_lookup_layer/token_counts/.ATTRIBUTES/table-keysBHlayer_with_weights-0/_lookup_layer/token_counts/.ATTRIBUTES/table-valuesB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:!*
dtype0*U
valueLBJ!B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B �
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0/savev2_embedding_embeddings_read_readvariableop)savev2_dense_9_kernel_read_readvariableop'savev2_dense_9_bias_read_readvariableop*savev2_dense_10_kernel_read_readvariableop(savev2_dense_10_bias_read_readvariableop*savev2_dense_11_kernel_read_readvariableop(savev2_dense_11_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableopFsavev2_mutablehashtable_lookup_table_export_values_lookuptableexportv2Hsavev2_mutablehashtable_lookup_table_export_values_lookuptableexportv2_1"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop6savev2_adam_embedding_embeddings_m_read_readvariableop0savev2_adam_dense_9_kernel_m_read_readvariableop.savev2_adam_dense_9_bias_m_read_readvariableop1savev2_adam_dense_10_kernel_m_read_readvariableop/savev2_adam_dense_10_bias_m_read_readvariableop1savev2_adam_dense_11_kernel_m_read_readvariableop/savev2_adam_dense_11_bias_m_read_readvariableop6savev2_adam_embedding_embeddings_v_read_readvariableop0savev2_adam_dense_9_kernel_v_read_readvariableop.savev2_adam_dense_9_bias_v_read_readvariableop1savev2_adam_dense_10_kernel_v_read_readvariableop/savev2_adam_dense_10_bias_v_read_readvariableop1savev2_adam_dense_11_kernel_v_read_readvariableop/savev2_adam_dense_11_bias_v_read_readvariableopsavev2_const_6"/device:CPU:0*
_output_shapes
 */
dtypes%
#2!		�
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:�
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 f
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: Q

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: [
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*�
_input_shapes�
�: :	�N:@:@:@ : : :: : : : : ::: : : : :	�N:@:@:@ : : ::	�N:@:@:@ : : :: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:%!

_output_shapes
:	�N:$ 

_output_shapes

:@: 

_output_shapes
:@:$ 

_output_shapes

:@ : 

_output_shapes
: :$ 

_output_shapes

: : 

_output_shapes
::

_output_shapes
: :	

_output_shapes
: :


_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
::

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	�N:$ 

_output_shapes

:@: 

_output_shapes
:@:$ 

_output_shapes

:@ : 

_output_shapes
: :$ 

_output_shapes

: : 

_output_shapes
::%!

_output_shapes
:	�N:$ 

_output_shapes

:@: 

_output_shapes
:@:$ 

_output_shapes

:@ : 

_output_shapes
: :$ 

_output_shapes

: :  

_output_shapes
::!

_output_shapes
: 
�
o
U__inference_transform_features_layer_3_layer_call_and_return_conditional_losses_63642
text
identity9
ShapeShapetext*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask;
Shape_1Shapetext*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :u
zeros/packedPackstrided_slice_1:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:M
zeros/ConstConst*
_output_shapes
: *
dtype0	*
value	B	 R l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0	*'
_output_shapes
:����������
PlaceholderWithDefaultPlaceholderWithDefaultzeros:output:0*'
_output_shapes
:���������*
dtype0	*
shape:����������
PartitionedCallPartitionedCallPlaceholderWithDefault:output:0text*
Tin
2	*
Tout
2	*:
_output_shapes(
&:���������:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *!
fR
__inference_pruned_63336`
IdentityIdentityPartitionedCall:output:1*
T0*'
_output_shapes
:���������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������:M I
'
_output_shapes
:���������

_user_specified_nametext
�

�
C__inference_dense_11_layer_call_and_return_conditional_losses_63759

inputs0
matmul_readvariableop_resource: -
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������V
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:���������Z
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:���������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:��������� : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:��������� 
 
_user_specified_nameinputs
�
~
)__inference_embedding_layer_call_fn_64377

inputs	
unknown:	�N
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2	*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������d*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_embedding_layer_call_and_return_conditional_losses_63709s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:���������d`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:���������d: 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������d
 
_user_specified_nameinputs
�t
�
B__inference_model_3_layer_call_and_return_conditional_losses_63766

inputsZ
Vtext_vectorization_3_string_lookup_27_hash_table_lookup_lookuptablefindv2_table_handle[
Wtext_vectorization_3_string_lookup_27_hash_table_lookup_lookuptablefindv2_default_value	1
-text_vectorization_3_string_lookup_27_equal_y4
0text_vectorization_3_string_lookup_27_selectv2_t	"
embedding_63710:	�N
dense_9_63726:@
dense_9_63728:@ 
dense_10_63743:@ 
dense_10_63745:  
dense_11_63760: 
dense_11_63762:
identity�� dense_10/StatefulPartitionedCall� dense_11/StatefulPartitionedCall�dense_9/StatefulPartitionedCall�!embedding/StatefulPartitionedCall�Itext_vectorization_3/string_lookup_27/hash_table_Lookup/LookupTableFindV2m
tf.reshape_3/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
���������z
tf.reshape_3/ReshapeReshapeinputs#tf.reshape_3/Reshape/shape:output:0*
T0*#
_output_shapes
:���������s
 text_vectorization_3/StringLowerStringLowertf.reshape_3/Reshape:output:0*#
_output_shapes
:����������
'text_vectorization_3/StaticRegexReplaceStaticRegexReplace)text_vectorization_3/StringLower:output:0*#
_output_shapes
:���������*6
pattern+)[!"#$%&()\*\+,-\./:;<=>?@\[\\\]^_`{|}~\']*
rewrite g
&text_vectorization_3/StringSplit/ConstConst*
_output_shapes
: *
dtype0*
valueB B �
.text_vectorization_3/StringSplit/StringSplitV2StringSplitV20text_vectorization_3/StaticRegexReplace:output:0/text_vectorization_3/StringSplit/Const:output:0*<
_output_shapes*
(:���������:���������:�
4text_vectorization_3/StringSplit/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        �
6text_vectorization_3/StringSplit/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       �
6text_vectorization_3/StringSplit/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
.text_vectorization_3/StringSplit/strided_sliceStridedSlice8text_vectorization_3/StringSplit/StringSplitV2:indices:0=text_vectorization_3/StringSplit/strided_slice/stack:output:0?text_vectorization_3/StringSplit/strided_slice/stack_1:output:0?text_vectorization_3/StringSplit/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_mask�
6text_vectorization_3/StringSplit/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: �
8text_vectorization_3/StringSplit/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
8text_vectorization_3/StringSplit/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
0text_vectorization_3/StringSplit/strided_slice_1StridedSlice6text_vectorization_3/StringSplit/StringSplitV2:shape:0?text_vectorization_3/StringSplit/strided_slice_1/stack:output:0Atext_vectorization_3/StringSplit/strided_slice_1/stack_1:output:0Atext_vectorization_3/StringSplit/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask�
Wtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CastCast7text_vectorization_3/StringSplit/strided_slice:output:0*

DstT0*

SrcT0	*#
_output_shapes
:����������
Ytext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1Cast9text_vectorization_3/StringSplit/strided_slice_1:output:0*

DstT0*

SrcT0	*
_output_shapes
: �
atext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ShapeShape[text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0*
T0*
_output_shapes
:�
atext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
`text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ProdProdjtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape:output:0jtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const:output:0*
T0*
_output_shapes
: �
etext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : �
ctext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/GreaterGreateritext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod:output:0ntext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y:output:0*
T0*
_output_shapes
: �
`text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/CastCastgtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater:z:0*

DstT0*

SrcT0
*
_output_shapes
: �
ctext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
_text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaxMax[text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0ltext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1:output:0*
T0*
_output_shapes
: �
atext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/yConst*
_output_shapes
: *
dtype0*
value	B :�
_text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/addAddV2htext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max:output:0jtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y:output:0*
T0*
_output_shapes
: �
_text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mulMuldtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast:y:0ctext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add:z:0*
T0*
_output_shapes
: �
ctext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaximumMaximum]text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0ctext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul:z:0*
T0*
_output_shapes
: �
ctext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MinimumMinimum]text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0gtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum:z:0*
T0*
_output_shapes
: �
ctext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2Const*
_output_shapes
: *
dtype0	*
valueB	 �
itext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
����������
ctext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ReshapeReshape[text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0rtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Reshape/shape:output:0*
T0*#
_output_shapes
:����������
dtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/BincountBincountltext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Reshape:output:0gtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum:z:0ltext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2:output:0*
T0	*#
_output_shapes
:����������
^text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Ytext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CumsumCumsumktext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount:bins:0gtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis:output:0*
T0	*#
_output_shapes
:����������
btext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0Const*
_output_shapes
:*
dtype0	*
valueB	R �
^text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Ytext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concatConcatV2ktext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0:output:0_text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum:out:0gtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis:output:0*
N*
T0	*#
_output_shapes
:����������
Itext_vectorization_3/string_lookup_27/hash_table_Lookup/LookupTableFindV2LookupTableFindV2Vtext_vectorization_3_string_lookup_27_hash_table_lookup_lookuptablefindv2_table_handle7text_vectorization_3/StringSplit/StringSplitV2:values:0Wtext_vectorization_3_string_lookup_27_hash_table_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:����������
+text_vectorization_3/string_lookup_27/EqualEqual7text_vectorization_3/StringSplit/StringSplitV2:values:0-text_vectorization_3_string_lookup_27_equal_y*
T0*#
_output_shapes
:����������
.text_vectorization_3/string_lookup_27/SelectV2SelectV2/text_vectorization_3/string_lookup_27/Equal:z:00text_vectorization_3_string_lookup_27_selectv2_tRtext_vectorization_3/string_lookup_27/hash_table_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:����������
.text_vectorization_3/string_lookup_27/IdentityIdentity7text_vectorization_3/string_lookup_27/SelectV2:output:0*
T0	*#
_output_shapes
:���������s
1text_vectorization_3/RaggedToTensor/default_valueConst*
_output_shapes
: *
dtype0	*
value	B	 R �
)text_vectorization_3/RaggedToTensor/ConstConst*
_output_shapes
:*
dtype0	*%
valueB	"��������d       �
8text_vectorization_3/RaggedToTensor/RaggedTensorToTensorRaggedTensorToTensor2text_vectorization_3/RaggedToTensor/Const:output:07text_vectorization_3/string_lookup_27/Identity:output:0:text_vectorization_3/RaggedToTensor/default_value:output:09text_vectorization_3/StringSplit/strided_slice_1:output:07text_vectorization_3/StringSplit/strided_slice:output:0*
T0	*
Tindex0	*
Tshape0	*'
_output_shapes
:���������d*
num_row_partition_tensors*7
row_partition_types 
FIRST_DIM_SIZEVALUE_ROWIDS�
!embedding/StatefulPartitionedCallStatefulPartitionedCallAtext_vectorization_3/RaggedToTensor/RaggedTensorToTensor:result:0embedding_63710*
Tin
2	*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������d*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_embedding_layer_call_and_return_conditional_losses_63709�
*global_average_pooling1d_3/PartitionedCallPartitionedCall*embedding/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *^
fYRW
U__inference_global_average_pooling1d_3_layer_call_and_return_conditional_losses_63585�
dense_9/StatefulPartitionedCallStatefulPartitionedCall3global_average_pooling1d_3/PartitionedCall:output:0dense_9_63726dense_9_63728*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_dense_9_layer_call_and_return_conditional_losses_63725�
 dense_10/StatefulPartitionedCallStatefulPartitionedCall(dense_9/StatefulPartitionedCall:output:0dense_10_63743dense_10_63745*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:��������� *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_dense_10_layer_call_and_return_conditional_losses_63742�
 dense_11/StatefulPartitionedCallStatefulPartitionedCall)dense_10/StatefulPartitionedCall:output:0dense_11_63760dense_11_63762*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_dense_11_layer_call_and_return_conditional_losses_63759x
IdentityIdentity)dense_11/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp!^dense_10/StatefulPartitionedCall!^dense_11/StatefulPartitionedCall ^dense_9/StatefulPartitionedCall"^embedding/StatefulPartitionedCallJ^text_vectorization_3/string_lookup_27/hash_table_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):���������: : : : : : : : : : : 2D
 dense_10/StatefulPartitionedCall dense_10/StatefulPartitionedCall2D
 dense_11/StatefulPartitionedCall dense_11/StatefulPartitionedCall2B
dense_9/StatefulPartitionedCalldense_9/StatefulPartitionedCall2F
!embedding/StatefulPartitionedCall!embedding/StatefulPartitionedCall2�
Itext_vectorization_3/string_lookup_27/hash_table_Lookup/LookupTableFindV2Itext_vectorization_3/string_lookup_27/hash_table_Lookup/LookupTableFindV2:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
�
[
:__inference_transform_features_layer_3_layer_call_fn_64462
inputs_text
identity�
PartitionedCallPartitionedCallinputs_text*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *^
fYRW
U__inference_transform_features_layer_3_layer_call_and_return_conditional_losses_63613`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:���������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������:T P
'
_output_shapes
:���������
%
_user_specified_nameinputs/text
�
�
'__inference_dense_9_layer_call_fn_64406

inputs
unknown:@
	unknown_0:@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_dense_9_layer_call_and_return_conditional_losses_63725o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
v
U__inference_transform_features_layer_3_layer_call_and_return_conditional_losses_64483
inputs_text
identity@
ShapeShapeinputs_text*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskB
Shape_1Shapeinputs_text*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :u
zeros/packedPackstrided_slice_1:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:M
zeros/ConstConst*
_output_shapes
: *
dtype0	*
value	B	 R l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0	*'
_output_shapes
:����������
PlaceholderWithDefaultPlaceholderWithDefaultzeros:output:0*'
_output_shapes
:���������*
dtype0	*
shape:����������
PartitionedCallPartitionedCallPlaceholderWithDefault:output:0inputs_text*
Tin
2	*
Tout
2	*:
_output_shapes(
&:���������:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *!
fR
__inference_pruned_63336`
IdentityIdentityPartitionedCall:output:1*
T0*'
_output_shapes
:���������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������:T P
'
_output_shapes
:���������
%
_user_specified_nameinputs/text
��
�
B__inference_model_3_layer_call_and_return_conditional_losses_64370

inputsZ
Vtext_vectorization_3_string_lookup_27_hash_table_lookup_lookuptablefindv2_table_handle[
Wtext_vectorization_3_string_lookup_27_hash_table_lookup_lookuptablefindv2_default_value	1
-text_vectorization_3_string_lookup_27_equal_y4
0text_vectorization_3_string_lookup_27_selectv2_t	3
 embedding_embedding_lookup_64341:	�N8
&dense_9_matmul_readvariableop_resource:@5
'dense_9_biasadd_readvariableop_resource:@9
'dense_10_matmul_readvariableop_resource:@ 6
(dense_10_biasadd_readvariableop_resource: 9
'dense_11_matmul_readvariableop_resource: 6
(dense_11_biasadd_readvariableop_resource:
identity��dense_10/BiasAdd/ReadVariableOp�dense_10/MatMul/ReadVariableOp�dense_11/BiasAdd/ReadVariableOp�dense_11/MatMul/ReadVariableOp�dense_9/BiasAdd/ReadVariableOp�dense_9/MatMul/ReadVariableOp�embedding/embedding_lookup�Itext_vectorization_3/string_lookup_27/hash_table_Lookup/LookupTableFindV2m
tf.reshape_3/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
���������z
tf.reshape_3/ReshapeReshapeinputs#tf.reshape_3/Reshape/shape:output:0*
T0*#
_output_shapes
:���������s
 text_vectorization_3/StringLowerStringLowertf.reshape_3/Reshape:output:0*#
_output_shapes
:����������
'text_vectorization_3/StaticRegexReplaceStaticRegexReplace)text_vectorization_3/StringLower:output:0*#
_output_shapes
:���������*6
pattern+)[!"#$%&()\*\+,-\./:;<=>?@\[\\\]^_`{|}~\']*
rewrite g
&text_vectorization_3/StringSplit/ConstConst*
_output_shapes
: *
dtype0*
valueB B �
.text_vectorization_3/StringSplit/StringSplitV2StringSplitV20text_vectorization_3/StaticRegexReplace:output:0/text_vectorization_3/StringSplit/Const:output:0*<
_output_shapes*
(:���������:���������:�
4text_vectorization_3/StringSplit/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        �
6text_vectorization_3/StringSplit/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       �
6text_vectorization_3/StringSplit/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
.text_vectorization_3/StringSplit/strided_sliceStridedSlice8text_vectorization_3/StringSplit/StringSplitV2:indices:0=text_vectorization_3/StringSplit/strided_slice/stack:output:0?text_vectorization_3/StringSplit/strided_slice/stack_1:output:0?text_vectorization_3/StringSplit/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_mask�
6text_vectorization_3/StringSplit/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: �
8text_vectorization_3/StringSplit/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
8text_vectorization_3/StringSplit/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
0text_vectorization_3/StringSplit/strided_slice_1StridedSlice6text_vectorization_3/StringSplit/StringSplitV2:shape:0?text_vectorization_3/StringSplit/strided_slice_1/stack:output:0Atext_vectorization_3/StringSplit/strided_slice_1/stack_1:output:0Atext_vectorization_3/StringSplit/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask�
Wtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CastCast7text_vectorization_3/StringSplit/strided_slice:output:0*

DstT0*

SrcT0	*#
_output_shapes
:����������
Ytext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1Cast9text_vectorization_3/StringSplit/strided_slice_1:output:0*

DstT0*

SrcT0	*
_output_shapes
: �
atext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ShapeShape[text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0*
T0*
_output_shapes
:�
atext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
`text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ProdProdjtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape:output:0jtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const:output:0*
T0*
_output_shapes
: �
etext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : �
ctext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/GreaterGreateritext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod:output:0ntext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y:output:0*
T0*
_output_shapes
: �
`text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/CastCastgtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater:z:0*

DstT0*

SrcT0
*
_output_shapes
: �
ctext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
_text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaxMax[text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0ltext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1:output:0*
T0*
_output_shapes
: �
atext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/yConst*
_output_shapes
: *
dtype0*
value	B :�
_text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/addAddV2htext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max:output:0jtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y:output:0*
T0*
_output_shapes
: �
_text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mulMuldtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast:y:0ctext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add:z:0*
T0*
_output_shapes
: �
ctext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaximumMaximum]text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0ctext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul:z:0*
T0*
_output_shapes
: �
ctext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MinimumMinimum]text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0gtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum:z:0*
T0*
_output_shapes
: �
ctext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2Const*
_output_shapes
: *
dtype0	*
valueB	 �
itext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
����������
ctext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ReshapeReshape[text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0rtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Reshape/shape:output:0*
T0*#
_output_shapes
:����������
dtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/BincountBincountltext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Reshape:output:0gtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum:z:0ltext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2:output:0*
T0	*#
_output_shapes
:����������
^text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Ytext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CumsumCumsumktext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount:bins:0gtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis:output:0*
T0	*#
_output_shapes
:����������
btext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0Const*
_output_shapes
:*
dtype0	*
valueB	R �
^text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Ytext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concatConcatV2ktext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0:output:0_text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum:out:0gtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis:output:0*
N*
T0	*#
_output_shapes
:����������
Itext_vectorization_3/string_lookup_27/hash_table_Lookup/LookupTableFindV2LookupTableFindV2Vtext_vectorization_3_string_lookup_27_hash_table_lookup_lookuptablefindv2_table_handle7text_vectorization_3/StringSplit/StringSplitV2:values:0Wtext_vectorization_3_string_lookup_27_hash_table_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:����������
+text_vectorization_3/string_lookup_27/EqualEqual7text_vectorization_3/StringSplit/StringSplitV2:values:0-text_vectorization_3_string_lookup_27_equal_y*
T0*#
_output_shapes
:����������
.text_vectorization_3/string_lookup_27/SelectV2SelectV2/text_vectorization_3/string_lookup_27/Equal:z:00text_vectorization_3_string_lookup_27_selectv2_tRtext_vectorization_3/string_lookup_27/hash_table_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:����������
.text_vectorization_3/string_lookup_27/IdentityIdentity7text_vectorization_3/string_lookup_27/SelectV2:output:0*
T0	*#
_output_shapes
:���������s
1text_vectorization_3/RaggedToTensor/default_valueConst*
_output_shapes
: *
dtype0	*
value	B	 R �
)text_vectorization_3/RaggedToTensor/ConstConst*
_output_shapes
:*
dtype0	*%
valueB	"��������d       �
8text_vectorization_3/RaggedToTensor/RaggedTensorToTensorRaggedTensorToTensor2text_vectorization_3/RaggedToTensor/Const:output:07text_vectorization_3/string_lookup_27/Identity:output:0:text_vectorization_3/RaggedToTensor/default_value:output:09text_vectorization_3/StringSplit/strided_slice_1:output:07text_vectorization_3/StringSplit/strided_slice:output:0*
T0	*
Tindex0	*
Tshape0	*'
_output_shapes
:���������d*
num_row_partition_tensors*7
row_partition_types 
FIRST_DIM_SIZEVALUE_ROWIDS�
embedding/embedding_lookupResourceGather embedding_embedding_lookup_64341Atext_vectorization_3/RaggedToTensor/RaggedTensorToTensor:result:0*
Tindices0	*3
_class)
'%loc:@embedding/embedding_lookup/64341*+
_output_shapes
:���������d*
dtype0�
#embedding/embedding_lookup/IdentityIdentity#embedding/embedding_lookup:output:0*
T0*3
_class)
'%loc:@embedding/embedding_lookup/64341*+
_output_shapes
:���������d�
%embedding/embedding_lookup/Identity_1Identity,embedding/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:���������ds
1global_average_pooling1d_3/Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :�
global_average_pooling1d_3/MeanMean.embedding/embedding_lookup/Identity_1:output:0:global_average_pooling1d_3/Mean/reduction_indices:output:0*
T0*'
_output_shapes
:����������
dense_9/MatMul/ReadVariableOpReadVariableOp&dense_9_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0�
dense_9/MatMulMatMul(global_average_pooling1d_3/Mean:output:0%dense_9/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@�
dense_9/BiasAdd/ReadVariableOpReadVariableOp'dense_9_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
dense_9/BiasAddBiasAdddense_9/MatMul:product:0&dense_9/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@`
dense_9/ReluReludense_9/BiasAdd:output:0*
T0*'
_output_shapes
:���������@�
dense_10/MatMul/ReadVariableOpReadVariableOp'dense_10_matmul_readvariableop_resource*
_output_shapes

:@ *
dtype0�
dense_10/MatMulMatMuldense_9/Relu:activations:0&dense_10/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� �
dense_10/BiasAdd/ReadVariableOpReadVariableOp(dense_10_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
dense_10/BiasAddBiasAdddense_10/MatMul:product:0'dense_10/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� b
dense_10/ReluReludense_10/BiasAdd:output:0*
T0*'
_output_shapes
:��������� �
dense_11/MatMul/ReadVariableOpReadVariableOp'dense_11_matmul_readvariableop_resource*
_output_shapes

: *
dtype0�
dense_11/MatMulMatMuldense_10/Relu:activations:0&dense_11/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
dense_11/BiasAdd/ReadVariableOpReadVariableOp(dense_11_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
dense_11/BiasAddBiasAdddense_11/MatMul:product:0'dense_11/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������h
dense_11/SigmoidSigmoiddense_11/BiasAdd:output:0*
T0*'
_output_shapes
:���������c
IdentityIdentitydense_11/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp ^dense_10/BiasAdd/ReadVariableOp^dense_10/MatMul/ReadVariableOp ^dense_11/BiasAdd/ReadVariableOp^dense_11/MatMul/ReadVariableOp^dense_9/BiasAdd/ReadVariableOp^dense_9/MatMul/ReadVariableOp^embedding/embedding_lookupJ^text_vectorization_3/string_lookup_27/hash_table_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):���������: : : : : : : : : : : 2B
dense_10/BiasAdd/ReadVariableOpdense_10/BiasAdd/ReadVariableOp2@
dense_10/MatMul/ReadVariableOpdense_10/MatMul/ReadVariableOp2B
dense_11/BiasAdd/ReadVariableOpdense_11/BiasAdd/ReadVariableOp2@
dense_11/MatMul/ReadVariableOpdense_11/MatMul/ReadVariableOp2@
dense_9/BiasAdd/ReadVariableOpdense_9/BiasAdd/ReadVariableOp2>
dense_9/MatMul/ReadVariableOpdense_9/MatMul/ReadVariableOp28
embedding/embedding_lookupembedding/embedding_lookup2�
Itext_vectorization_3/string_lookup_27/hash_table_Lookup/LookupTableFindV2Itext_vectorization_3/string_lookup_27/hash_table_Lookup/LookupTableFindV2:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
�F
�
__inference_adapt_step_62558
iterator9
5none_lookup_table_find_lookuptablefindv2_table_handle:
6none_lookup_table_find_lookuptablefindv2_default_value	��IteratorGetNext�(None_lookup_table_find/LookupTableFindV2�,None_lookup_table_insert/LookupTableInsertV2�
IteratorGetNextIteratorGetNextiterator*
_class
loc:@iterator*#
_output_shapes
:���������*"
output_shapes
:���������*
output_types
2]
StringLowerStringLowerIteratorGetNext:components:0*#
_output_shapes
:����������
StaticRegexReplaceStaticRegexReplaceStringLower:output:0*#
_output_shapes
:���������*6
pattern+)[!"#$%&()\*\+,-\./:;<=>?@\[\\\]^_`{|}~\']*
rewrite R
StringSplit/ConstConst*
_output_shapes
: *
dtype0*
valueB B �
StringSplit/StringSplitV2StringSplitV2StaticRegexReplace:output:0StringSplit/Const:output:0*<
_output_shapes*
(:���������:���������:p
StringSplit/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        r
!StringSplit/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       r
!StringSplit/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
StringSplit/strided_sliceStridedSlice#StringSplit/StringSplitV2:indices:0(StringSplit/strided_slice/stack:output:0*StringSplit/strided_slice/stack_1:output:0*StringSplit/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_maskk
!StringSplit/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: m
#StringSplit/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:m
#StringSplit/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
StringSplit/strided_slice_1StridedSlice!StringSplit/StringSplitV2:shape:0*StringSplit/strided_slice_1/stack:output:0,StringSplit/strided_slice_1/stack_1:output:0,StringSplit/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask�
BStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CastCast"StringSplit/strided_slice:output:0*

DstT0*

SrcT0	*#
_output_shapes
:����������
DStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1Cast$StringSplit/strided_slice_1:output:0*

DstT0*

SrcT0	*
_output_shapes
: �
LStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ShapeShapeFStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0*
T0*
_output_shapes
:�
LStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
KStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ProdProdUStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape:output:0UStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const:output:0*
T0*
_output_shapes
: �
PStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : �
NStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/GreaterGreaterTStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod:output:0YStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y:output:0*
T0*
_output_shapes
: �
KStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/CastCastRStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater:z:0*

DstT0*

SrcT0
*
_output_shapes
: �
NStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
JStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaxMaxFStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0WStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1:output:0*
T0*
_output_shapes
: �
LStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/yConst*
_output_shapes
: *
dtype0*
value	B :�
JStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/addAddV2SStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max:output:0UStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y:output:0*
T0*
_output_shapes
: �
JStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mulMulOStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast:y:0NStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add:z:0*
T0*
_output_shapes
: �
NStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaximumMaximumHStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0NStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul:z:0*
T0*
_output_shapes
: �
NStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MinimumMinimumHStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0RStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum:z:0*
T0*
_output_shapes
: �
NStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2Const*
_output_shapes
: *
dtype0	*
valueB	 �
TStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
����������
NStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ReshapeReshapeFStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0]StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Reshape/shape:output:0*
T0*#
_output_shapes
:����������
OStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/BincountBincountWStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Reshape:output:0RStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum:z:0WStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2:output:0*
T0	*#
_output_shapes
:����������
IStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axisConst*
_output_shapes
: *
dtype0*
value	B : �
DStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CumsumCumsumVStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount:bins:0RStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis:output:0*
T0	*#
_output_shapes
:����������
MStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0Const*
_output_shapes
:*
dtype0	*
valueB	R �
IStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
DStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concatConcatV2VStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0:output:0JStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum:out:0RStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis:output:0*
N*
T0	*#
_output_shapes
:����������
UniqueWithCountsUniqueWithCounts"StringSplit/StringSplitV2:values:0*
T0*A
_output_shapes/
-:���������:���������:���������*
out_idx0	�
(None_lookup_table_find/LookupTableFindV2LookupTableFindV25none_lookup_table_find_lookuptablefindv2_table_handleUniqueWithCounts:y:06none_lookup_table_find_lookuptablefindv2_default_value",/job:localhost/replica:0/task:0/device:CPU:0*	
Tin0*

Tout0	*
_output_shapes
:|
addAddV2UniqueWithCounts:count:01None_lookup_table_find/LookupTableFindV2:values:0*
T0	*
_output_shapes
:�
,None_lookup_table_insert/LookupTableInsertV2LookupTableInsertV25none_lookup_table_find_lookuptablefindv2_table_handleUniqueWithCounts:y:0add:z:0)^None_lookup_table_find/LookupTableFindV2",/job:localhost/replica:0/task:0/device:CPU:0*	
Tin0*

Tout0	*
_output_shapes
 *(
_construction_contextkEagerRuntime*
_input_shapes
: : : 2"
IteratorGetNextIteratorGetNext2T
(None_lookup_table_find/LookupTableFindV2(None_lookup_table_find/LookupTableFindV22\
,None_lookup_table_insert/LookupTableInsertV2,None_lookup_table_insert/LookupTableInsertV2:( $
"
_user_specified_name
iterator:

_output_shapes
: 
�

�
C__inference_dense_10_layer_call_and_return_conditional_losses_64437

inputs0
matmul_readvariableop_resource:@ -
biasadd_readvariableop_resource: 
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@ *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:��������� a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:��������� w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������@
 
_user_specified_nameinputs
�
�
(__inference_dense_10_layer_call_fn_64426

inputs
unknown:@ 
	unknown_0: 
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:��������� *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_dense_10_layer_call_and_return_conditional_losses_63742o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:��������� `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������@: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������@
 
_user_specified_nameinputs
�t
�
B__inference_model_3_layer_call_and_return_conditional_losses_63944

inputsZ
Vtext_vectorization_3_string_lookup_27_hash_table_lookup_lookuptablefindv2_table_handle[
Wtext_vectorization_3_string_lookup_27_hash_table_lookup_lookuptablefindv2_default_value	1
-text_vectorization_3_string_lookup_27_equal_y4
0text_vectorization_3_string_lookup_27_selectv2_t	"
embedding_63924:	�N
dense_9_63928:@
dense_9_63930:@ 
dense_10_63933:@ 
dense_10_63935:  
dense_11_63938: 
dense_11_63940:
identity�� dense_10/StatefulPartitionedCall� dense_11/StatefulPartitionedCall�dense_9/StatefulPartitionedCall�!embedding/StatefulPartitionedCall�Itext_vectorization_3/string_lookup_27/hash_table_Lookup/LookupTableFindV2m
tf.reshape_3/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
���������z
tf.reshape_3/ReshapeReshapeinputs#tf.reshape_3/Reshape/shape:output:0*
T0*#
_output_shapes
:���������s
 text_vectorization_3/StringLowerStringLowertf.reshape_3/Reshape:output:0*#
_output_shapes
:����������
'text_vectorization_3/StaticRegexReplaceStaticRegexReplace)text_vectorization_3/StringLower:output:0*#
_output_shapes
:���������*6
pattern+)[!"#$%&()\*\+,-\./:;<=>?@\[\\\]^_`{|}~\']*
rewrite g
&text_vectorization_3/StringSplit/ConstConst*
_output_shapes
: *
dtype0*
valueB B �
.text_vectorization_3/StringSplit/StringSplitV2StringSplitV20text_vectorization_3/StaticRegexReplace:output:0/text_vectorization_3/StringSplit/Const:output:0*<
_output_shapes*
(:���������:���������:�
4text_vectorization_3/StringSplit/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        �
6text_vectorization_3/StringSplit/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       �
6text_vectorization_3/StringSplit/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
.text_vectorization_3/StringSplit/strided_sliceStridedSlice8text_vectorization_3/StringSplit/StringSplitV2:indices:0=text_vectorization_3/StringSplit/strided_slice/stack:output:0?text_vectorization_3/StringSplit/strided_slice/stack_1:output:0?text_vectorization_3/StringSplit/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_mask�
6text_vectorization_3/StringSplit/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: �
8text_vectorization_3/StringSplit/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
8text_vectorization_3/StringSplit/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
0text_vectorization_3/StringSplit/strided_slice_1StridedSlice6text_vectorization_3/StringSplit/StringSplitV2:shape:0?text_vectorization_3/StringSplit/strided_slice_1/stack:output:0Atext_vectorization_3/StringSplit/strided_slice_1/stack_1:output:0Atext_vectorization_3/StringSplit/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask�
Wtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CastCast7text_vectorization_3/StringSplit/strided_slice:output:0*

DstT0*

SrcT0	*#
_output_shapes
:����������
Ytext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1Cast9text_vectorization_3/StringSplit/strided_slice_1:output:0*

DstT0*

SrcT0	*
_output_shapes
: �
atext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ShapeShape[text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0*
T0*
_output_shapes
:�
atext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
`text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ProdProdjtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape:output:0jtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const:output:0*
T0*
_output_shapes
: �
etext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : �
ctext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/GreaterGreateritext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod:output:0ntext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y:output:0*
T0*
_output_shapes
: �
`text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/CastCastgtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater:z:0*

DstT0*

SrcT0
*
_output_shapes
: �
ctext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
_text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaxMax[text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0ltext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1:output:0*
T0*
_output_shapes
: �
atext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/yConst*
_output_shapes
: *
dtype0*
value	B :�
_text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/addAddV2htext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max:output:0jtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y:output:0*
T0*
_output_shapes
: �
_text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mulMuldtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast:y:0ctext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add:z:0*
T0*
_output_shapes
: �
ctext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaximumMaximum]text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0ctext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul:z:0*
T0*
_output_shapes
: �
ctext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MinimumMinimum]text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0gtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum:z:0*
T0*
_output_shapes
: �
ctext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2Const*
_output_shapes
: *
dtype0	*
valueB	 �
itext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
����������
ctext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ReshapeReshape[text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0rtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Reshape/shape:output:0*
T0*#
_output_shapes
:����������
dtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/BincountBincountltext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Reshape:output:0gtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum:z:0ltext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2:output:0*
T0	*#
_output_shapes
:����������
^text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Ytext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CumsumCumsumktext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount:bins:0gtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis:output:0*
T0	*#
_output_shapes
:����������
btext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0Const*
_output_shapes
:*
dtype0	*
valueB	R �
^text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Ytext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concatConcatV2ktext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0:output:0_text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum:out:0gtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis:output:0*
N*
T0	*#
_output_shapes
:����������
Itext_vectorization_3/string_lookup_27/hash_table_Lookup/LookupTableFindV2LookupTableFindV2Vtext_vectorization_3_string_lookup_27_hash_table_lookup_lookuptablefindv2_table_handle7text_vectorization_3/StringSplit/StringSplitV2:values:0Wtext_vectorization_3_string_lookup_27_hash_table_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:����������
+text_vectorization_3/string_lookup_27/EqualEqual7text_vectorization_3/StringSplit/StringSplitV2:values:0-text_vectorization_3_string_lookup_27_equal_y*
T0*#
_output_shapes
:����������
.text_vectorization_3/string_lookup_27/SelectV2SelectV2/text_vectorization_3/string_lookup_27/Equal:z:00text_vectorization_3_string_lookup_27_selectv2_tRtext_vectorization_3/string_lookup_27/hash_table_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:����������
.text_vectorization_3/string_lookup_27/IdentityIdentity7text_vectorization_3/string_lookup_27/SelectV2:output:0*
T0	*#
_output_shapes
:���������s
1text_vectorization_3/RaggedToTensor/default_valueConst*
_output_shapes
: *
dtype0	*
value	B	 R �
)text_vectorization_3/RaggedToTensor/ConstConst*
_output_shapes
:*
dtype0	*%
valueB	"��������d       �
8text_vectorization_3/RaggedToTensor/RaggedTensorToTensorRaggedTensorToTensor2text_vectorization_3/RaggedToTensor/Const:output:07text_vectorization_3/string_lookup_27/Identity:output:0:text_vectorization_3/RaggedToTensor/default_value:output:09text_vectorization_3/StringSplit/strided_slice_1:output:07text_vectorization_3/StringSplit/strided_slice:output:0*
T0	*
Tindex0	*
Tshape0	*'
_output_shapes
:���������d*
num_row_partition_tensors*7
row_partition_types 
FIRST_DIM_SIZEVALUE_ROWIDS�
!embedding/StatefulPartitionedCallStatefulPartitionedCallAtext_vectorization_3/RaggedToTensor/RaggedTensorToTensor:result:0embedding_63924*
Tin
2	*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������d*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_embedding_layer_call_and_return_conditional_losses_63709�
*global_average_pooling1d_3/PartitionedCallPartitionedCall*embedding/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *^
fYRW
U__inference_global_average_pooling1d_3_layer_call_and_return_conditional_losses_63585�
dense_9/StatefulPartitionedCallStatefulPartitionedCall3global_average_pooling1d_3/PartitionedCall:output:0dense_9_63928dense_9_63930*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_dense_9_layer_call_and_return_conditional_losses_63725�
 dense_10/StatefulPartitionedCallStatefulPartitionedCall(dense_9/StatefulPartitionedCall:output:0dense_10_63933dense_10_63935*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:��������� *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_dense_10_layer_call_and_return_conditional_losses_63742�
 dense_11/StatefulPartitionedCallStatefulPartitionedCall)dense_10/StatefulPartitionedCall:output:0dense_11_63938dense_11_63940*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_dense_11_layer_call_and_return_conditional_losses_63759x
IdentityIdentity)dense_11/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp!^dense_10/StatefulPartitionedCall!^dense_11/StatefulPartitionedCall ^dense_9/StatefulPartitionedCall"^embedding/StatefulPartitionedCallJ^text_vectorization_3/string_lookup_27/hash_table_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):���������: : : : : : : : : : : 2D
 dense_10/StatefulPartitionedCall dense_10/StatefulPartitionedCall2D
 dense_11/StatefulPartitionedCall dense_11/StatefulPartitionedCall2B
dense_9/StatefulPartitionedCalldense_9/StatefulPartitionedCall2F
!embedding/StatefulPartitionedCall!embedding/StatefulPartitionedCall2�
Itext_vectorization_3/string_lookup_27/hash_table_Lookup/LookupTableFindV2Itext_vectorization_3/string_lookup_27/hash_table_Lookup/LookupTableFindV2:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
�
�
__inference_save_fn_64535
checkpoint_keyP
Lmutablehashtable_lookup_table_export_values_lookuptableexportv2_table_handle
identity

identity_1

identity_2

identity_3

identity_4

identity_5	��?MutableHashTable_lookup_table_export_values/LookupTableExportV2�
?MutableHashTable_lookup_table_export_values/LookupTableExportV2LookupTableExportV2Lmutablehashtable_lookup_table_export_values_lookuptableexportv2_table_handle",/job:localhost/replica:0/task:0/device:CPU:0*
Tkeys0*
Tvalues0	*
_output_shapes

::K
add/yConst*
_output_shapes
: *
dtype0*
valueB B-keysK
addAddcheckpoint_keyadd/y:output:0*
T0*
_output_shapes
: O
add_1/yConst*
_output_shapes
: *
dtype0*
valueB B-valuesO
add_1Addcheckpoint_keyadd_1/y:output:0*
T0*
_output_shapes
: E
IdentityIdentityadd:z:0^NoOp*
T0*
_output_shapes
: F
ConstConst*
_output_shapes
: *
dtype0*
valueB B N

Identity_1IdentityConst:output:0^NoOp*
T0*
_output_shapes
: �

Identity_2IdentityFMutableHashTable_lookup_table_export_values/LookupTableExportV2:keys:0^NoOp*
T0*
_output_shapes
:I

Identity_3Identity	add_1:z:0^NoOp*
T0*
_output_shapes
: H
Const_1Const*
_output_shapes
: *
dtype0*
valueB B P

Identity_4IdentityConst_1:output:0^NoOp*
T0*
_output_shapes
: �

Identity_5IdentityHMutableHashTable_lookup_table_export_values/LookupTableExportV2:values:0^NoOp*
T0	*
_output_shapes
:�
NoOpNoOp@^MutableHashTable_lookup_table_export_values/LookupTableExportV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: : 2�
?MutableHashTable_lookup_table_export_values/LookupTableExportV2?MutableHashTable_lookup_table_export_values/LookupTableExportV2:F B

_output_shapes
: 
(
_user_specified_namecheckpoint_key
�
.
__inference__initializer_64511
identityG
ConstConst*
_output_shapes
: *
dtype0*
value	B :E
IdentityIdentityConst:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 
�
T
:__inference_transform_features_layer_3_layer_call_fn_63616
text
identity�
PartitionedCallPartitionedCalltext*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *^
fYRW
U__inference_transform_features_layer_3_layer_call_and_return_conditional_losses_63613`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:���������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������:M I
'
_output_shapes
:���������

_user_specified_nametext
�

�
'__inference_model_3_layer_call_fn_63996
text_xf
unknown
	unknown_0	
	unknown_1
	unknown_2	
	unknown_3:	�N
	unknown_4:@
	unknown_5:@
	unknown_6:@ 
	unknown_7: 
	unknown_8: 
	unknown_9:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCalltext_xfunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
Tin
2		*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*)
_read_only_resource_inputs
		
*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_model_3_layer_call_and_return_conditional_losses_63944o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):���������: : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:���������
!
_user_specified_name	text_xf:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
�
q
U__inference_global_average_pooling1d_3_layer_call_and_return_conditional_losses_64397

inputs
identityX
Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :p
MeanMeaninputsMean/reduction_indices:output:0*
T0*0
_output_shapes
:������������������^
IdentityIdentityMean:output:0*
T0*0
_output_shapes
:������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):'���������������������������:e a
=
_output_shapes+
):'���������������������������
 
_user_specified_nameinputs
��
�	
&__inference_serve_tf_examples_fn_63462
examplesb
^model_3_text_vectorization_3_string_lookup_27_hash_table_lookup_lookuptablefindv2_table_handlec
_model_3_text_vectorization_3_string_lookup_27_hash_table_lookup_lookuptablefindv2_default_value	9
5model_3_text_vectorization_3_string_lookup_27_equal_y<
8model_3_text_vectorization_3_string_lookup_27_selectv2_t	;
(model_3_embedding_embedding_lookup_63433:	�N@
.model_3_dense_9_matmul_readvariableop_resource:@=
/model_3_dense_9_biasadd_readvariableop_resource:@A
/model_3_dense_10_matmul_readvariableop_resource:@ >
0model_3_dense_10_biasadd_readvariableop_resource: A
/model_3_dense_11_matmul_readvariableop_resource: >
0model_3_dense_11_biasadd_readvariableop_resource:
identity��'model_3/dense_10/BiasAdd/ReadVariableOp�&model_3/dense_10/MatMul/ReadVariableOp�'model_3/dense_11/BiasAdd/ReadVariableOp�&model_3/dense_11/MatMul/ReadVariableOp�&model_3/dense_9/BiasAdd/ReadVariableOp�%model_3/dense_9/MatMul/ReadVariableOp�"model_3/embedding/embedding_lookup�Qmodel_3/text_vectorization_3/string_lookup_27/hash_table_Lookup/LookupTableFindV2U
ParseExample/ConstConst*
_output_shapes
: *
dtype0*
valueB d
!ParseExample/ParseExampleV2/namesConst*
_output_shapes
: *
dtype0*
valueB j
'ParseExample/ParseExampleV2/sparse_keysConst*
_output_shapes
: *
dtype0*
valueB s
&ParseExample/ParseExampleV2/dense_keysConst*
_output_shapes
:*
dtype0*
valueBBtextj
'ParseExample/ParseExampleV2/ragged_keysConst*
_output_shapes
: *
dtype0*
valueB �
ParseExample/ParseExampleV2ParseExampleV2examples*ParseExample/ParseExampleV2/names:output:00ParseExample/ParseExampleV2/sparse_keys:output:0/ParseExample/ParseExampleV2/dense_keys:output:00ParseExample/ParseExampleV2/ragged_keys:output:0ParseExample/Const:output:0*
Tdense
2*'
_output_shapes
:���������*
dense_shapes
:*

num_sparse *
ragged_split_types
 *
ragged_value_types
 *
sparse_types
 z
 transform_features_layer_3/ShapeShape*ParseExample/ParseExampleV2:dense_values:0*
T0*
_output_shapes
:x
.transform_features_layer_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: z
0transform_features_layer_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:z
0transform_features_layer_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
(transform_features_layer_3/strided_sliceStridedSlice)transform_features_layer_3/Shape:output:07transform_features_layer_3/strided_slice/stack:output:09transform_features_layer_3/strided_slice/stack_1:output:09transform_features_layer_3/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask|
"transform_features_layer_3/Shape_1Shape*ParseExample/ParseExampleV2:dense_values:0*
T0*
_output_shapes
:z
0transform_features_layer_3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: |
2transform_features_layer_3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:|
2transform_features_layer_3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
*transform_features_layer_3/strided_slice_1StridedSlice+transform_features_layer_3/Shape_1:output:09transform_features_layer_3/strided_slice_1/stack:output:0;transform_features_layer_3/strided_slice_1/stack_1:output:0;transform_features_layer_3/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskk
)transform_features_layer_3/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :�
'transform_features_layer_3/zeros/packedPack3transform_features_layer_3/strided_slice_1:output:02transform_features_layer_3/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
&transform_features_layer_3/zeros/ConstConst*
_output_shapes
: *
dtype0	*
value	B	 R �
 transform_features_layer_3/zerosFill0transform_features_layer_3/zeros/packed:output:0/transform_features_layer_3/zeros/Const:output:0*
T0	*'
_output_shapes
:����������
1transform_features_layer_3/PlaceholderWithDefaultPlaceholderWithDefault)transform_features_layer_3/zeros:output:0*'
_output_shapes
:���������*
dtype0	*
shape:����������
*transform_features_layer_3/PartitionedCallPartitionedCall:transform_features_layer_3/PlaceholderWithDefault:output:0*ParseExample/ParseExampleV2:dense_values:0*
Tin
2	*
Tout
2	*:
_output_shapes(
&:���������:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *!
fR
__inference_pruned_63336u
"model_3/tf.reshape_3/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
����������
model_3/tf.reshape_3/ReshapeReshape3transform_features_layer_3/PartitionedCall:output:1+model_3/tf.reshape_3/Reshape/shape:output:0*
T0*#
_output_shapes
:����������
(model_3/text_vectorization_3/StringLowerStringLower%model_3/tf.reshape_3/Reshape:output:0*#
_output_shapes
:����������
/model_3/text_vectorization_3/StaticRegexReplaceStaticRegexReplace1model_3/text_vectorization_3/StringLower:output:0*#
_output_shapes
:���������*6
pattern+)[!"#$%&()\*\+,-\./:;<=>?@\[\\\]^_`{|}~\']*
rewrite o
.model_3/text_vectorization_3/StringSplit/ConstConst*
_output_shapes
: *
dtype0*
valueB B �
6model_3/text_vectorization_3/StringSplit/StringSplitV2StringSplitV28model_3/text_vectorization_3/StaticRegexReplace:output:07model_3/text_vectorization_3/StringSplit/Const:output:0*<
_output_shapes*
(:���������:���������:�
<model_3/text_vectorization_3/StringSplit/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        �
>model_3/text_vectorization_3/StringSplit/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       �
>model_3/text_vectorization_3/StringSplit/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
6model_3/text_vectorization_3/StringSplit/strided_sliceStridedSlice@model_3/text_vectorization_3/StringSplit/StringSplitV2:indices:0Emodel_3/text_vectorization_3/StringSplit/strided_slice/stack:output:0Gmodel_3/text_vectorization_3/StringSplit/strided_slice/stack_1:output:0Gmodel_3/text_vectorization_3/StringSplit/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_mask�
>model_3/text_vectorization_3/StringSplit/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: �
@model_3/text_vectorization_3/StringSplit/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
@model_3/text_vectorization_3/StringSplit/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
8model_3/text_vectorization_3/StringSplit/strided_slice_1StridedSlice>model_3/text_vectorization_3/StringSplit/StringSplitV2:shape:0Gmodel_3/text_vectorization_3/StringSplit/strided_slice_1/stack:output:0Imodel_3/text_vectorization_3/StringSplit/strided_slice_1/stack_1:output:0Imodel_3/text_vectorization_3/StringSplit/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask�
_model_3/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CastCast?model_3/text_vectorization_3/StringSplit/strided_slice:output:0*

DstT0*

SrcT0	*#
_output_shapes
:����������
amodel_3/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1CastAmodel_3/text_vectorization_3/StringSplit/strided_slice_1:output:0*

DstT0*

SrcT0	*
_output_shapes
: �
imodel_3/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ShapeShapecmodel_3/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0*
T0*
_output_shapes
:�
imodel_3/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
hmodel_3/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ProdProdrmodel_3/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape:output:0rmodel_3/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const:output:0*
T0*
_output_shapes
: �
mmodel_3/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : �
kmodel_3/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/GreaterGreaterqmodel_3/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod:output:0vmodel_3/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y:output:0*
T0*
_output_shapes
: �
hmodel_3/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/CastCastomodel_3/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater:z:0*

DstT0*

SrcT0
*
_output_shapes
: �
kmodel_3/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
gmodel_3/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaxMaxcmodel_3/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0tmodel_3/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1:output:0*
T0*
_output_shapes
: �
imodel_3/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/yConst*
_output_shapes
: *
dtype0*
value	B :�
gmodel_3/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/addAddV2pmodel_3/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max:output:0rmodel_3/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y:output:0*
T0*
_output_shapes
: �
gmodel_3/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mulMullmodel_3/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast:y:0kmodel_3/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add:z:0*
T0*
_output_shapes
: �
kmodel_3/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaximumMaximumemodel_3/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0kmodel_3/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul:z:0*
T0*
_output_shapes
: �
kmodel_3/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MinimumMinimumemodel_3/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0omodel_3/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum:z:0*
T0*
_output_shapes
: �
kmodel_3/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2Const*
_output_shapes
: *
dtype0	*
valueB	 �
qmodel_3/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
����������
kmodel_3/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ReshapeReshapecmodel_3/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0zmodel_3/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Reshape/shape:output:0*
T0*#
_output_shapes
:����������
lmodel_3/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/BincountBincounttmodel_3/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Reshape:output:0omodel_3/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum:z:0tmodel_3/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2:output:0*
T0	*#
_output_shapes
:����������
fmodel_3/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axisConst*
_output_shapes
: *
dtype0*
value	B : �
amodel_3/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CumsumCumsumsmodel_3/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount:bins:0omodel_3/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis:output:0*
T0	*#
_output_shapes
:����������
jmodel_3/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0Const*
_output_shapes
:*
dtype0	*
valueB	R �
fmodel_3/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
amodel_3/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concatConcatV2smodel_3/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0:output:0gmodel_3/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum:out:0omodel_3/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis:output:0*
N*
T0	*#
_output_shapes
:����������
Qmodel_3/text_vectorization_3/string_lookup_27/hash_table_Lookup/LookupTableFindV2LookupTableFindV2^model_3_text_vectorization_3_string_lookup_27_hash_table_lookup_lookuptablefindv2_table_handle?model_3/text_vectorization_3/StringSplit/StringSplitV2:values:0_model_3_text_vectorization_3_string_lookup_27_hash_table_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:����������
3model_3/text_vectorization_3/string_lookup_27/EqualEqual?model_3/text_vectorization_3/StringSplit/StringSplitV2:values:05model_3_text_vectorization_3_string_lookup_27_equal_y*
T0*#
_output_shapes
:����������
6model_3/text_vectorization_3/string_lookup_27/SelectV2SelectV27model_3/text_vectorization_3/string_lookup_27/Equal:z:08model_3_text_vectorization_3_string_lookup_27_selectv2_tZmodel_3/text_vectorization_3/string_lookup_27/hash_table_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:����������
6model_3/text_vectorization_3/string_lookup_27/IdentityIdentity?model_3/text_vectorization_3/string_lookup_27/SelectV2:output:0*
T0	*#
_output_shapes
:���������{
9model_3/text_vectorization_3/RaggedToTensor/default_valueConst*
_output_shapes
: *
dtype0	*
value	B	 R �
1model_3/text_vectorization_3/RaggedToTensor/ConstConst*
_output_shapes
:*
dtype0	*%
valueB	"��������d       �
@model_3/text_vectorization_3/RaggedToTensor/RaggedTensorToTensorRaggedTensorToTensor:model_3/text_vectorization_3/RaggedToTensor/Const:output:0?model_3/text_vectorization_3/string_lookup_27/Identity:output:0Bmodel_3/text_vectorization_3/RaggedToTensor/default_value:output:0Amodel_3/text_vectorization_3/StringSplit/strided_slice_1:output:0?model_3/text_vectorization_3/StringSplit/strided_slice:output:0*
T0	*
Tindex0	*
Tshape0	*'
_output_shapes
:���������d*
num_row_partition_tensors*7
row_partition_types 
FIRST_DIM_SIZEVALUE_ROWIDS�
"model_3/embedding/embedding_lookupResourceGather(model_3_embedding_embedding_lookup_63433Imodel_3/text_vectorization_3/RaggedToTensor/RaggedTensorToTensor:result:0*
Tindices0	*;
_class1
/-loc:@model_3/embedding/embedding_lookup/63433*+
_output_shapes
:���������d*
dtype0�
+model_3/embedding/embedding_lookup/IdentityIdentity+model_3/embedding/embedding_lookup:output:0*
T0*;
_class1
/-loc:@model_3/embedding/embedding_lookup/63433*+
_output_shapes
:���������d�
-model_3/embedding/embedding_lookup/Identity_1Identity4model_3/embedding/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:���������d{
9model_3/global_average_pooling1d_3/Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :�
'model_3/global_average_pooling1d_3/MeanMean6model_3/embedding/embedding_lookup/Identity_1:output:0Bmodel_3/global_average_pooling1d_3/Mean/reduction_indices:output:0*
T0*'
_output_shapes
:����������
%model_3/dense_9/MatMul/ReadVariableOpReadVariableOp.model_3_dense_9_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0�
model_3/dense_9/MatMulMatMul0model_3/global_average_pooling1d_3/Mean:output:0-model_3/dense_9/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@�
&model_3/dense_9/BiasAdd/ReadVariableOpReadVariableOp/model_3_dense_9_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
model_3/dense_9/BiasAddBiasAdd model_3/dense_9/MatMul:product:0.model_3/dense_9/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@p
model_3/dense_9/ReluRelu model_3/dense_9/BiasAdd:output:0*
T0*'
_output_shapes
:���������@�
&model_3/dense_10/MatMul/ReadVariableOpReadVariableOp/model_3_dense_10_matmul_readvariableop_resource*
_output_shapes

:@ *
dtype0�
model_3/dense_10/MatMulMatMul"model_3/dense_9/Relu:activations:0.model_3/dense_10/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� �
'model_3/dense_10/BiasAdd/ReadVariableOpReadVariableOp0model_3_dense_10_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
model_3/dense_10/BiasAddBiasAdd!model_3/dense_10/MatMul:product:0/model_3/dense_10/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� r
model_3/dense_10/ReluRelu!model_3/dense_10/BiasAdd:output:0*
T0*'
_output_shapes
:��������� �
&model_3/dense_11/MatMul/ReadVariableOpReadVariableOp/model_3_dense_11_matmul_readvariableop_resource*
_output_shapes

: *
dtype0�
model_3/dense_11/MatMulMatMul#model_3/dense_10/Relu:activations:0.model_3/dense_11/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
'model_3/dense_11/BiasAdd/ReadVariableOpReadVariableOp0model_3_dense_11_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
model_3/dense_11/BiasAddBiasAdd!model_3/dense_11/MatMul:product:0/model_3/dense_11/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������x
model_3/dense_11/SigmoidSigmoid!model_3/dense_11/BiasAdd:output:0*
T0*'
_output_shapes
:���������k
IdentityIdentitymodel_3/dense_11/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp(^model_3/dense_10/BiasAdd/ReadVariableOp'^model_3/dense_10/MatMul/ReadVariableOp(^model_3/dense_11/BiasAdd/ReadVariableOp'^model_3/dense_11/MatMul/ReadVariableOp'^model_3/dense_9/BiasAdd/ReadVariableOp&^model_3/dense_9/MatMul/ReadVariableOp#^model_3/embedding/embedding_lookupR^model_3/text_vectorization_3/string_lookup_27/hash_table_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:���������: : : : : : : : : : : 2R
'model_3/dense_10/BiasAdd/ReadVariableOp'model_3/dense_10/BiasAdd/ReadVariableOp2P
&model_3/dense_10/MatMul/ReadVariableOp&model_3/dense_10/MatMul/ReadVariableOp2R
'model_3/dense_11/BiasAdd/ReadVariableOp'model_3/dense_11/BiasAdd/ReadVariableOp2P
&model_3/dense_11/MatMul/ReadVariableOp&model_3/dense_11/MatMul/ReadVariableOp2P
&model_3/dense_9/BiasAdd/ReadVariableOp&model_3/dense_9/BiasAdd/ReadVariableOp2N
%model_3/dense_9/MatMul/ReadVariableOp%model_3/dense_9/MatMul/ReadVariableOp2H
"model_3/embedding/embedding_lookup"model_3/embedding/embedding_lookup2�
Qmodel_3/text_vectorization_3/string_lookup_27/hash_table_Lookup/LookupTableFindV2Qmodel_3/text_vectorization_3/string_lookup_27/hash_table_Lookup/LookupTableFindV2:M I
#
_output_shapes
:���������
"
_user_specified_name
examples:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
�

�
'__inference_model_3_layer_call_fn_64177

inputs
unknown
	unknown_0	
	unknown_1
	unknown_2	
	unknown_3:	�N
	unknown_4:@
	unknown_5:@
	unknown_6:@ 
	unknown_7: 
	unknown_8: 
	unknown_9:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
Tin
2		*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*)
_read_only_resource_inputs
		
*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_model_3_layer_call_and_return_conditional_losses_63766o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):���������: : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
�
�
(__inference_dense_11_layer_call_fn_64446

inputs
unknown: 
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_dense_11_layer_call_and_return_conditional_losses_63759o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:��������� : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:��������� 
 
_user_specified_nameinputs
�

�
'__inference_model_3_layer_call_fn_64204

inputs
unknown
	unknown_0	
	unknown_1
	unknown_2	
	unknown_3:	�N
	unknown_4:@
	unknown_5:@
	unknown_6:@ 
	unknown_7: 
	unknown_8: 
	unknown_9:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
Tin
2		*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*)
_read_only_resource_inputs
		
*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_model_3_layer_call_and_return_conditional_losses_63944o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):���������: : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
�
,
__inference__destroyer_64516
identityG
ConstConst*
_output_shapes
: *
dtype0*
value	B :E
IdentityIdentityConst:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 
�
�
D__inference_embedding_layer_call_and_return_conditional_losses_64386

inputs	)
embedding_lookup_64380:	�N
identity��embedding_lookup�
embedding_lookupResourceGatherembedding_lookup_64380inputs*
Tindices0	*)
_class
loc:@embedding_lookup/64380*+
_output_shapes
:���������d*
dtype0�
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0*)
_class
loc:@embedding_lookup/64380*+
_output_shapes
:���������d�
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:���������dw
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*+
_output_shapes
:���������dY
NoOpNoOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:���������d: 2$
embedding_lookupembedding_lookup:O K
'
_output_shapes
:���������d
 
_user_specified_nameinputs
�

�
C__inference_dense_11_layer_call_and_return_conditional_losses_64457

inputs0
matmul_readvariableop_resource: -
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������V
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:���������Z
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:���������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:��������� : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:��������� 
 
_user_specified_nameinputs
�
�
__inference__initializer_644968
4key_value_init60296_lookuptableimportv2_table_handle0
,key_value_init60296_lookuptableimportv2_keys2
.key_value_init60296_lookuptableimportv2_values	
identity��'key_value_init60296/LookupTableImportV2�
'key_value_init60296/LookupTableImportV2LookupTableImportV24key_value_init60296_lookuptableimportv2_table_handle,key_value_init60296_lookuptableimportv2_keys.key_value_init60296_lookuptableimportv2_values*	
Tin0*

Tout0	*
_output_shapes
 G
ConstConst*
_output_shapes
: *
dtype0*
value	B :L
IdentityIdentityConst:output:0^NoOp*
T0*
_output_shapes
: p
NoOpNoOp(^key_value_init60296/LookupTableImportV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*#
_input_shapes
: :�:�2R
'key_value_init60296/LookupTableImportV2'key_value_init60296/LookupTableImportV2:!

_output_shapes	
:�:!

_output_shapes	
:�
��
�
B__inference_model_3_layer_call_and_return_conditional_losses_64287

inputsZ
Vtext_vectorization_3_string_lookup_27_hash_table_lookup_lookuptablefindv2_table_handle[
Wtext_vectorization_3_string_lookup_27_hash_table_lookup_lookuptablefindv2_default_value	1
-text_vectorization_3_string_lookup_27_equal_y4
0text_vectorization_3_string_lookup_27_selectv2_t	3
 embedding_embedding_lookup_64258:	�N8
&dense_9_matmul_readvariableop_resource:@5
'dense_9_biasadd_readvariableop_resource:@9
'dense_10_matmul_readvariableop_resource:@ 6
(dense_10_biasadd_readvariableop_resource: 9
'dense_11_matmul_readvariableop_resource: 6
(dense_11_biasadd_readvariableop_resource:
identity��dense_10/BiasAdd/ReadVariableOp�dense_10/MatMul/ReadVariableOp�dense_11/BiasAdd/ReadVariableOp�dense_11/MatMul/ReadVariableOp�dense_9/BiasAdd/ReadVariableOp�dense_9/MatMul/ReadVariableOp�embedding/embedding_lookup�Itext_vectorization_3/string_lookup_27/hash_table_Lookup/LookupTableFindV2m
tf.reshape_3/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
���������z
tf.reshape_3/ReshapeReshapeinputs#tf.reshape_3/Reshape/shape:output:0*
T0*#
_output_shapes
:���������s
 text_vectorization_3/StringLowerStringLowertf.reshape_3/Reshape:output:0*#
_output_shapes
:����������
'text_vectorization_3/StaticRegexReplaceStaticRegexReplace)text_vectorization_3/StringLower:output:0*#
_output_shapes
:���������*6
pattern+)[!"#$%&()\*\+,-\./:;<=>?@\[\\\]^_`{|}~\']*
rewrite g
&text_vectorization_3/StringSplit/ConstConst*
_output_shapes
: *
dtype0*
valueB B �
.text_vectorization_3/StringSplit/StringSplitV2StringSplitV20text_vectorization_3/StaticRegexReplace:output:0/text_vectorization_3/StringSplit/Const:output:0*<
_output_shapes*
(:���������:���������:�
4text_vectorization_3/StringSplit/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        �
6text_vectorization_3/StringSplit/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       �
6text_vectorization_3/StringSplit/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
.text_vectorization_3/StringSplit/strided_sliceStridedSlice8text_vectorization_3/StringSplit/StringSplitV2:indices:0=text_vectorization_3/StringSplit/strided_slice/stack:output:0?text_vectorization_3/StringSplit/strided_slice/stack_1:output:0?text_vectorization_3/StringSplit/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_mask�
6text_vectorization_3/StringSplit/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: �
8text_vectorization_3/StringSplit/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
8text_vectorization_3/StringSplit/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
0text_vectorization_3/StringSplit/strided_slice_1StridedSlice6text_vectorization_3/StringSplit/StringSplitV2:shape:0?text_vectorization_3/StringSplit/strided_slice_1/stack:output:0Atext_vectorization_3/StringSplit/strided_slice_1/stack_1:output:0Atext_vectorization_3/StringSplit/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask�
Wtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CastCast7text_vectorization_3/StringSplit/strided_slice:output:0*

DstT0*

SrcT0	*#
_output_shapes
:����������
Ytext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1Cast9text_vectorization_3/StringSplit/strided_slice_1:output:0*

DstT0*

SrcT0	*
_output_shapes
: �
atext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ShapeShape[text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0*
T0*
_output_shapes
:�
atext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
`text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ProdProdjtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape:output:0jtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const:output:0*
T0*
_output_shapes
: �
etext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : �
ctext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/GreaterGreateritext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod:output:0ntext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y:output:0*
T0*
_output_shapes
: �
`text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/CastCastgtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater:z:0*

DstT0*

SrcT0
*
_output_shapes
: �
ctext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
_text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaxMax[text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0ltext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1:output:0*
T0*
_output_shapes
: �
atext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/yConst*
_output_shapes
: *
dtype0*
value	B :�
_text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/addAddV2htext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max:output:0jtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y:output:0*
T0*
_output_shapes
: �
_text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mulMuldtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast:y:0ctext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add:z:0*
T0*
_output_shapes
: �
ctext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaximumMaximum]text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0ctext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul:z:0*
T0*
_output_shapes
: �
ctext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MinimumMinimum]text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0gtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum:z:0*
T0*
_output_shapes
: �
ctext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2Const*
_output_shapes
: *
dtype0	*
valueB	 �
itext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
����������
ctext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ReshapeReshape[text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0rtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Reshape/shape:output:0*
T0*#
_output_shapes
:����������
dtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/BincountBincountltext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Reshape:output:0gtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum:z:0ltext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2:output:0*
T0	*#
_output_shapes
:����������
^text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Ytext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CumsumCumsumktext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount:bins:0gtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis:output:0*
T0	*#
_output_shapes
:����������
btext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0Const*
_output_shapes
:*
dtype0	*
valueB	R �
^text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Ytext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concatConcatV2ktext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0:output:0_text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum:out:0gtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis:output:0*
N*
T0	*#
_output_shapes
:����������
Itext_vectorization_3/string_lookup_27/hash_table_Lookup/LookupTableFindV2LookupTableFindV2Vtext_vectorization_3_string_lookup_27_hash_table_lookup_lookuptablefindv2_table_handle7text_vectorization_3/StringSplit/StringSplitV2:values:0Wtext_vectorization_3_string_lookup_27_hash_table_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:����������
+text_vectorization_3/string_lookup_27/EqualEqual7text_vectorization_3/StringSplit/StringSplitV2:values:0-text_vectorization_3_string_lookup_27_equal_y*
T0*#
_output_shapes
:����������
.text_vectorization_3/string_lookup_27/SelectV2SelectV2/text_vectorization_3/string_lookup_27/Equal:z:00text_vectorization_3_string_lookup_27_selectv2_tRtext_vectorization_3/string_lookup_27/hash_table_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:����������
.text_vectorization_3/string_lookup_27/IdentityIdentity7text_vectorization_3/string_lookup_27/SelectV2:output:0*
T0	*#
_output_shapes
:���������s
1text_vectorization_3/RaggedToTensor/default_valueConst*
_output_shapes
: *
dtype0	*
value	B	 R �
)text_vectorization_3/RaggedToTensor/ConstConst*
_output_shapes
:*
dtype0	*%
valueB	"��������d       �
8text_vectorization_3/RaggedToTensor/RaggedTensorToTensorRaggedTensorToTensor2text_vectorization_3/RaggedToTensor/Const:output:07text_vectorization_3/string_lookup_27/Identity:output:0:text_vectorization_3/RaggedToTensor/default_value:output:09text_vectorization_3/StringSplit/strided_slice_1:output:07text_vectorization_3/StringSplit/strided_slice:output:0*
T0	*
Tindex0	*
Tshape0	*'
_output_shapes
:���������d*
num_row_partition_tensors*7
row_partition_types 
FIRST_DIM_SIZEVALUE_ROWIDS�
embedding/embedding_lookupResourceGather embedding_embedding_lookup_64258Atext_vectorization_3/RaggedToTensor/RaggedTensorToTensor:result:0*
Tindices0	*3
_class)
'%loc:@embedding/embedding_lookup/64258*+
_output_shapes
:���������d*
dtype0�
#embedding/embedding_lookup/IdentityIdentity#embedding/embedding_lookup:output:0*
T0*3
_class)
'%loc:@embedding/embedding_lookup/64258*+
_output_shapes
:���������d�
%embedding/embedding_lookup/Identity_1Identity,embedding/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:���������ds
1global_average_pooling1d_3/Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :�
global_average_pooling1d_3/MeanMean.embedding/embedding_lookup/Identity_1:output:0:global_average_pooling1d_3/Mean/reduction_indices:output:0*
T0*'
_output_shapes
:����������
dense_9/MatMul/ReadVariableOpReadVariableOp&dense_9_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0�
dense_9/MatMulMatMul(global_average_pooling1d_3/Mean:output:0%dense_9/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@�
dense_9/BiasAdd/ReadVariableOpReadVariableOp'dense_9_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
dense_9/BiasAddBiasAdddense_9/MatMul:product:0&dense_9/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@`
dense_9/ReluReludense_9/BiasAdd:output:0*
T0*'
_output_shapes
:���������@�
dense_10/MatMul/ReadVariableOpReadVariableOp'dense_10_matmul_readvariableop_resource*
_output_shapes

:@ *
dtype0�
dense_10/MatMulMatMuldense_9/Relu:activations:0&dense_10/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� �
dense_10/BiasAdd/ReadVariableOpReadVariableOp(dense_10_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
dense_10/BiasAddBiasAdddense_10/MatMul:product:0'dense_10/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� b
dense_10/ReluReludense_10/BiasAdd:output:0*
T0*'
_output_shapes
:��������� �
dense_11/MatMul/ReadVariableOpReadVariableOp'dense_11_matmul_readvariableop_resource*
_output_shapes

: *
dtype0�
dense_11/MatMulMatMuldense_10/Relu:activations:0&dense_11/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
dense_11/BiasAdd/ReadVariableOpReadVariableOp(dense_11_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
dense_11/BiasAddBiasAdddense_11/MatMul:product:0'dense_11/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������h
dense_11/SigmoidSigmoiddense_11/BiasAdd:output:0*
T0*'
_output_shapes
:���������c
IdentityIdentitydense_11/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp ^dense_10/BiasAdd/ReadVariableOp^dense_10/MatMul/ReadVariableOp ^dense_11/BiasAdd/ReadVariableOp^dense_11/MatMul/ReadVariableOp^dense_9/BiasAdd/ReadVariableOp^dense_9/MatMul/ReadVariableOp^embedding/embedding_lookupJ^text_vectorization_3/string_lookup_27/hash_table_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):���������: : : : : : : : : : : 2B
dense_10/BiasAdd/ReadVariableOpdense_10/BiasAdd/ReadVariableOp2@
dense_10/MatMul/ReadVariableOpdense_10/MatMul/ReadVariableOp2B
dense_11/BiasAdd/ReadVariableOpdense_11/BiasAdd/ReadVariableOp2@
dense_11/MatMul/ReadVariableOpdense_11/MatMul/ReadVariableOp2@
dense_9/BiasAdd/ReadVariableOpdense_9/BiasAdd/ReadVariableOp2>
dense_9/MatMul/ReadVariableOpdense_9/MatMul/ReadVariableOp28
embedding/embedding_lookupembedding/embedding_lookup2�
Itext_vectorization_3/string_lookup_27/hash_table_Lookup/LookupTableFindV2Itext_vectorization_3/string_lookup_27/hash_table_Lookup/LookupTableFindV2:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
�	
�
__inference_restore_fn_64544
restored_tensors_0
restored_tensors_1	C
?mutablehashtable_table_restore_lookuptableimportv2_table_handle
identity��2MutableHashTable_table_restore/LookupTableImportV2�
2MutableHashTable_table_restore/LookupTableImportV2LookupTableImportV2?mutablehashtable_table_restore_lookuptableimportv2_table_handlerestored_tensors_0restored_tensors_1",/job:localhost/replica:0/task:0/device:CPU:0*	
Tin0*

Tout0	*
_output_shapes
 G
ConstConst*
_output_shapes
: *
dtype0*
value	B :I
Const_1Const*
_output_shapes
: *
dtype0*
value	B :N
IdentityIdentityConst_1:output:0^NoOp*
T0*
_output_shapes
: {
NoOpNoOp3^MutableHashTable_table_restore/LookupTableImportV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes

::: 2h
2MutableHashTable_table_restore/LookupTableImportV22MutableHashTable_table_restore/LookupTableImportV2:L H

_output_shapes
:
,
_user_specified_namerestored_tensors_0:LH

_output_shapes
:
,
_user_specified_namerestored_tensors_1
�
R
__inference_pruned_63336

inputs	
inputs_1
identity	

identity_1Q
inputs_copyIdentityinputs*
T0	*'
_output_shapes
:���������\
IdentityIdentityinputs_copy:output:0*
T0	*'
_output_shapes
:���������U
inputs_1_copyIdentityinputs_1*
T0*'
_output_shapes
:���������[
StringLowerStringLowerinputs_1_copy:output:0*'
_output_shapes
:���������^

Identity_1IdentityStringLower:output:0*
T0*'
_output_shapes
:���������"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:���������:���������:- )
'
_output_shapes
:���������:-)
'
_output_shapes
:���������
�
q
U__inference_transform_features_layer_3_layer_call_and_return_conditional_losses_63613

inputs
identity;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask=
Shape_1Shapeinputs*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :u
zeros/packedPackstrided_slice_1:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:M
zeros/ConstConst*
_output_shapes
: *
dtype0	*
value	B	 R l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0	*'
_output_shapes
:����������
PlaceholderWithDefaultPlaceholderWithDefaultzeros:output:0*'
_output_shapes
:���������*
dtype0	*
shape:����������
PartitionedCallPartitionedCallPlaceholderWithDefault:output:0inputs*
Tin
2	*
Tout
2	*:
_output_shapes(
&:���������:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *!
fR
__inference_pruned_63336`
IdentityIdentityPartitionedCall:output:1*
T0*'
_output_shapes
:���������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs"�	L
saver_filename:0StatefulPartitionedCall_2:0StatefulPartitionedCall_38"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*�
serving_default�
9
examples-
serving_default_examples:0���������<
output_00
StatefulPartitionedCall:0���������tensorflow/serving/predict:��
�
layer-0
layer-1
layer_with_weights-0
layer-2
layer_with_weights-1
layer-3
layer-4
layer_with_weights-2
layer-5
layer_with_weights-3
layer-6
layer_with_weights-4
layer-7
	layer-8

	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer
		tft_layer

signatures"
_tf_keras_network
"
_tf_keras_input_layer
(
	keras_api"
_tf_keras_layer
P
	keras_api
_lookup_layer
_adapt_function"
_tf_keras_layer
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

embeddings"
_tf_keras_layer
�
	variables
trainable_variables
 regularization_losses
!	keras_api
"__call__
*#&call_and_return_all_conditional_losses"
_tf_keras_layer
�
$	variables
%trainable_variables
&regularization_losses
'	keras_api
(__call__
*)&call_and_return_all_conditional_losses

*kernel
+bias"
_tf_keras_layer
�
,	variables
-trainable_variables
.regularization_losses
/	keras_api
0__call__
*1&call_and_return_all_conditional_losses

2kernel
3bias"
_tf_keras_layer
�
4	variables
5trainable_variables
6regularization_losses
7	keras_api
8__call__
*9&call_and_return_all_conditional_losses

:kernel
;bias"
_tf_keras_layer
�
<	variables
=trainable_variables
>regularization_losses
?	keras_api
@__call__
*A&call_and_return_all_conditional_losses
$B _saved_model_loader_tracked_dict"
_tf_keras_model
Q
1
*2
+3
24
35
:6
;7"
trackable_list_wrapper
Q
0
*1
+2
23
34
:5
;6"
trackable_list_wrapper
 "
trackable_list_wrapper
�
Cnon_trainable_variables

Dlayers
Emetrics
Flayer_regularization_losses
Glayer_metrics

	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
�
Htrace_0
Itrace_1
Jtrace_2
Ktrace_32�
'__inference_model_3_layer_call_fn_63791
'__inference_model_3_layer_call_fn_64177
'__inference_model_3_layer_call_fn_64204
'__inference_model_3_layer_call_fn_63996�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zHtrace_0zItrace_1zJtrace_2zKtrace_3
�
Ltrace_0
Mtrace_1
Ntrace_2
Otrace_32�
B__inference_model_3_layer_call_and_return_conditional_losses_64287
B__inference_model_3_layer_call_and_return_conditional_losses_64370
B__inference_model_3_layer_call_and_return_conditional_losses_64070
B__inference_model_3_layer_call_and_return_conditional_losses_64144�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zLtrace_0zMtrace_1zNtrace_2zOtrace_3
�
P	capture_1
Q	capture_2
R	capture_3B�
 __inference__wrapped_model_63575text_xf"�
���
FullArgSpec
args� 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zP	capture_1zQ	capture_2zR	capture_3
�
Siter

Tbeta_1

Ubeta_2
	Vdecay
Wlearning_ratem�*m�+m�2m�3m�:m�;m�v�*v�+v�2v�3v�:v�;v�"
	optimizer
,
Xserving_default"
signature_map
"
_generic_user_object
"
_generic_user_object
L
Y	keras_api
Zlookup_table
[token_counts"
_tf_keras_layer
�
\trace_02�
__inference_adapt_step_62558�
���
FullArgSpec
args�

jiterator
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z\trace_0
'
0"
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
�
]non_trainable_variables

^layers
_metrics
`layer_regularization_losses
alayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
�
btrace_02�
)__inference_embedding_layer_call_fn_64377�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zbtrace_0
�
ctrace_02�
D__inference_embedding_layer_call_and_return_conditional_losses_64386�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zctrace_0
':%	�N2embedding/embeddings
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
dnon_trainable_variables

elayers
fmetrics
glayer_regularization_losses
hlayer_metrics
	variables
trainable_variables
 regularization_losses
"__call__
*#&call_and_return_all_conditional_losses
&#"call_and_return_conditional_losses"
_generic_user_object
�
itrace_02�
:__inference_global_average_pooling1d_3_layer_call_fn_64391�
���
FullArgSpec%
args�
jself
jinputs
jmask
varargs
 
varkw
 
defaults�

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zitrace_0
�
jtrace_02�
U__inference_global_average_pooling1d_3_layer_call_and_return_conditional_losses_64397�
���
FullArgSpec%
args�
jself
jinputs
jmask
varargs
 
varkw
 
defaults�

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zjtrace_0
.
*0
+1"
trackable_list_wrapper
.
*0
+1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
knon_trainable_variables

llayers
mmetrics
nlayer_regularization_losses
olayer_metrics
$	variables
%trainable_variables
&regularization_losses
(__call__
*)&call_and_return_all_conditional_losses
&)"call_and_return_conditional_losses"
_generic_user_object
�
ptrace_02�
'__inference_dense_9_layer_call_fn_64406�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zptrace_0
�
qtrace_02�
B__inference_dense_9_layer_call_and_return_conditional_losses_64417�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zqtrace_0
 :@2dense_9/kernel
:@2dense_9/bias
.
20
31"
trackable_list_wrapper
.
20
31"
trackable_list_wrapper
 "
trackable_list_wrapper
�
rnon_trainable_variables

slayers
tmetrics
ulayer_regularization_losses
vlayer_metrics
,	variables
-trainable_variables
.regularization_losses
0__call__
*1&call_and_return_all_conditional_losses
&1"call_and_return_conditional_losses"
_generic_user_object
�
wtrace_02�
(__inference_dense_10_layer_call_fn_64426�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zwtrace_0
�
xtrace_02�
C__inference_dense_10_layer_call_and_return_conditional_losses_64437�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zxtrace_0
!:@ 2dense_10/kernel
: 2dense_10/bias
.
:0
;1"
trackable_list_wrapper
.
:0
;1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
ynon_trainable_variables

zlayers
{metrics
|layer_regularization_losses
}layer_metrics
4	variables
5trainable_variables
6regularization_losses
8__call__
*9&call_and_return_all_conditional_losses
&9"call_and_return_conditional_losses"
_generic_user_object
�
~trace_02�
(__inference_dense_11_layer_call_fn_64446�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z~trace_0
�
trace_02�
C__inference_dense_11_layer_call_and_return_conditional_losses_64457�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 ztrace_0
!: 2dense_11/kernel
:2dense_11/bias
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
<	variables
=trainable_variables
>regularization_losses
@__call__
*A&call_and_return_all_conditional_losses
&A"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
:__inference_transform_features_layer_3_layer_call_fn_63616
:__inference_transform_features_layer_3_layer_call_fn_64462�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
U__inference_transform_features_layer_3_layer_call_and_return_conditional_losses_64483
U__inference_transform_features_layer_3_layer_call_and_return_conditional_losses_63642�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
�
�	_imported
�_wrapped_function
�_structured_inputs
�_structured_outputs
�_output_to_inputs_map"
trackable_dict_wrapper
 "
trackable_list_wrapper
_
0
1
2
3
4
5
6
7
	8"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�
P	capture_1
Q	capture_2
R	capture_3B�
'__inference_model_3_layer_call_fn_63791text_xf"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zP	capture_1zQ	capture_2zR	capture_3
�
P	capture_1
Q	capture_2
R	capture_3B�
'__inference_model_3_layer_call_fn_64177inputs"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zP	capture_1zQ	capture_2zR	capture_3
�
P	capture_1
Q	capture_2
R	capture_3B�
'__inference_model_3_layer_call_fn_64204inputs"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zP	capture_1zQ	capture_2zR	capture_3
�
P	capture_1
Q	capture_2
R	capture_3B�
'__inference_model_3_layer_call_fn_63996text_xf"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zP	capture_1zQ	capture_2zR	capture_3
�
P	capture_1
Q	capture_2
R	capture_3B�
B__inference_model_3_layer_call_and_return_conditional_losses_64287inputs"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zP	capture_1zQ	capture_2zR	capture_3
�
P	capture_1
Q	capture_2
R	capture_3B�
B__inference_model_3_layer_call_and_return_conditional_losses_64370inputs"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zP	capture_1zQ	capture_2zR	capture_3
�
P	capture_1
Q	capture_2
R	capture_3B�
B__inference_model_3_layer_call_and_return_conditional_losses_64070text_xf"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zP	capture_1zQ	capture_2zR	capture_3
�
P	capture_1
Q	capture_2
R	capture_3B�
B__inference_model_3_layer_call_and_return_conditional_losses_64144text_xf"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zP	capture_1zQ	capture_2zR	capture_3
!J	
Const_5jtf.TrackableConstant
!J	
Const_4jtf.TrackableConstant
!J	
Const_3jtf.TrackableConstant
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
�
P	capture_1
Q	capture_2
R	capture_3B�
#__inference_signature_wrapper_63491examples"�
���
FullArgSpec
args� 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zP	capture_1zQ	capture_2zR	capture_3
"
_generic_user_object
j
�_initializer
�_create_resource
�_initialize
�_destroy_resourceR jtf.StaticHashTable
T
�_create_resource
�_initialize
�_destroy_resourceR Z
table��
�
�	capture_1B�
__inference_adapt_step_62558iterator"�
���
FullArgSpec
args�

jiterator
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�	capture_1
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
)__inference_embedding_layer_call_fn_64377inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
D__inference_embedding_layer_call_and_return_conditional_losses_64386inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
:__inference_global_average_pooling1d_3_layer_call_fn_64391inputs"�
���
FullArgSpec%
args�
jself
jinputs
jmask
varargs
 
varkw
 
defaults�

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
U__inference_global_average_pooling1d_3_layer_call_and_return_conditional_losses_64397inputs"�
���
FullArgSpec%
args�
jself
jinputs
jmask
varargs
 
varkw
 
defaults�

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
'__inference_dense_9_layer_call_fn_64406inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
B__inference_dense_9_layer_call_and_return_conditional_losses_64417inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
(__inference_dense_10_layer_call_fn_64426inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
C__inference_dense_10_layer_call_and_return_conditional_losses_64437inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
(__inference_dense_11_layer_call_fn_64446inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
C__inference_dense_11_layer_call_and_return_conditional_losses_64457inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
:__inference_transform_features_layer_3_layer_call_fn_63616text"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
:__inference_transform_features_layer_3_layer_call_fn_64462inputs/text"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
U__inference_transform_features_layer_3_layer_call_and_return_conditional_losses_64483inputs/text"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
U__inference_transform_features_layer_3_layer_call_and_return_conditional_losses_63642text"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�
�created_variables
�	resources
�trackable_objects
�initializers
�assets
�
signatures
$�_self_saveable_object_factories
�transform_fn"
_generic_user_object
0B.
__inference_pruned_63336inputsinputs_1
 "
trackable_dict_wrapper
 "
trackable_dict_wrapper
 "
trackable_dict_wrapper
R
�	variables
�	keras_api

�total

�count"
_tf_keras_metric
c
�	variables
�	keras_api

�total

�count
�
_fn_kwargs"
_tf_keras_metric
"
_generic_user_object
�
�trace_02�
__inference__creator_64488�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� z�trace_0
�
�trace_02�
__inference__initializer_64496�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� z�trace_0
�
�trace_02�
__inference__destroyer_64501�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� z�trace_0
�
�trace_02�
__inference__creator_64506�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� z�trace_0
�
�trace_02�
__inference__initializer_64511�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� z�trace_0
�
�trace_02�
__inference__destroyer_64516�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� z�trace_0
!J	
Const_2jtf.TrackableConstant
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
-
�serving_default"
signature_map
 "
trackable_dict_wrapper
0
�0
�1"
trackable_list_wrapper
.
�	variables"
_generic_user_object
:  (2total
:  (2count
0
�0
�1"
trackable_list_wrapper
.
�	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
�B�
__inference__creator_64488"�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� 
�
�	capture_1
�	capture_2B�
__inference__initializer_64496"�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� z�	capture_1z�	capture_2
�B�
__inference__destroyer_64501"�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� 
�B�
__inference__creator_64506"�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� 
�B�
__inference__initializer_64511"�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� 
�B�
__inference__destroyer_64516"�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� 
�B�
#__inference_signature_wrapper_63344inputsinputs_1"�
���
FullArgSpec
args� 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
J
Constjtf.TrackableConstant
!J	
Const_1jtf.TrackableConstant
,:*	�N2Adam/embedding/embeddings/m
%:#@2Adam/dense_9/kernel/m
:@2Adam/dense_9/bias/m
&:$@ 2Adam/dense_10/kernel/m
 : 2Adam/dense_10/bias/m
&:$ 2Adam/dense_11/kernel/m
 :2Adam/dense_11/bias/m
,:*	�N2Adam/embedding/embeddings/v
%:#@2Adam/dense_9/kernel/v
:@2Adam/dense_9/bias/v
&:$@ 2Adam/dense_10/kernel/v
 : 2Adam/dense_10/bias/v
&:$ 2Adam/dense_11/kernel/v
 :2Adam/dense_11/bias/v
�B�
__inference_save_fn_64535checkpoint_key"�
���
FullArgSpec
args�
jcheckpoint_key
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *�	
� 
�B�
__inference_restore_fn_64544restored_tensors_0restored_tensors_1"�
���
FullArgSpec
args� 
varargsjrestored_tensors
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *�
	�
	�	6
__inference__creator_64488�

� 
� "� 6
__inference__creator_64506�

� 
� "� 8
__inference__destroyer_64501�

� 
� "� 8
__inference__destroyer_64516�

� 
� "� A
__inference__initializer_64496Z���

� 
� "� :
__inference__initializer_64511�

� 
� "� �
 __inference__wrapped_model_63575tZPQR*+23:;0�-
&�#
!�
text_xf���������
� "3�0
.
dense_11"�
dense_11���������j
__inference_adapt_step_62558J[�?�<
5�2
0�-�
����������IteratorSpec 
� "
 �
C__inference_dense_10_layer_call_and_return_conditional_losses_64437\23/�,
%�"
 �
inputs���������@
� "%�"
�
0��������� 
� {
(__inference_dense_10_layer_call_fn_64426O23/�,
%�"
 �
inputs���������@
� "���������� �
C__inference_dense_11_layer_call_and_return_conditional_losses_64457\:;/�,
%�"
 �
inputs��������� 
� "%�"
�
0���������
� {
(__inference_dense_11_layer_call_fn_64446O:;/�,
%�"
 �
inputs��������� 
� "�����������
B__inference_dense_9_layer_call_and_return_conditional_losses_64417\*+/�,
%�"
 �
inputs���������
� "%�"
�
0���������@
� z
'__inference_dense_9_layer_call_fn_64406O*+/�,
%�"
 �
inputs���������
� "����������@�
D__inference_embedding_layer_call_and_return_conditional_losses_64386_/�,
%�"
 �
inputs���������d	
� ")�&
�
0���������d
� 
)__inference_embedding_layer_call_fn_64377R/�,
%�"
 �
inputs���������d	
� "����������d�
U__inference_global_average_pooling1d_3_layer_call_and_return_conditional_losses_64397{I�F
?�<
6�3
inputs'���������������������������

 
� ".�+
$�!
0������������������
� �
:__inference_global_average_pooling1d_3_layer_call_fn_64391nI�F
?�<
6�3
inputs'���������������������������

 
� "!��������������������
B__inference_model_3_layer_call_and_return_conditional_losses_64070nZPQR*+23:;8�5
.�+
!�
text_xf���������
p 

 
� "%�"
�
0���������
� �
B__inference_model_3_layer_call_and_return_conditional_losses_64144nZPQR*+23:;8�5
.�+
!�
text_xf���������
p

 
� "%�"
�
0���������
� �
B__inference_model_3_layer_call_and_return_conditional_losses_64287mZPQR*+23:;7�4
-�*
 �
inputs���������
p 

 
� "%�"
�
0���������
� �
B__inference_model_3_layer_call_and_return_conditional_losses_64370mZPQR*+23:;7�4
-�*
 �
inputs���������
p

 
� "%�"
�
0���������
� �
'__inference_model_3_layer_call_fn_63791aZPQR*+23:;8�5
.�+
!�
text_xf���������
p 

 
� "�����������
'__inference_model_3_layer_call_fn_63996aZPQR*+23:;8�5
.�+
!�
text_xf���������
p

 
� "�����������
'__inference_model_3_layer_call_fn_64177`ZPQR*+23:;7�4
-�*
 �
inputs���������
p 

 
� "�����������
'__inference_model_3_layer_call_fn_64204`ZPQR*+23:;7�4
-�*
 �
inputs���������
p

 
� "�����������
__inference_pruned_63336�x�u
n�k
i�f
5
recalled)�&
inputs/recalled���������	
-
text%�"
inputs/text���������
� "g�d
4
recalled_xf%�"
recalled_xf���������	
,
text_xf!�
text_xf���������y
__inference_restore_fn_64544Y[K�H
A�>
�
restored_tensors_0
�
restored_tensors_1	
� "� �
__inference_save_fn_64535�[&�#
�
�
checkpoint_key 
� "���
`�]

name�
0/name 
#

slice_spec�
0/slice_spec 

tensor�
0/tensor
`�]

name�
1/name 
#

slice_spec�
1/slice_spec 

tensor�
1/tensor	�
#__inference_signature_wrapper_63344�i�f
� 
_�\
*
inputs �
inputs���������	
.
inputs_1"�
inputs_1���������"g�d
4
recalled_xf%�"
recalled_xf���������	
,
text_xf!�
text_xf����������
#__inference_signature_wrapper_63491}ZPQR*+23:;9�6
� 
/�,
*
examples�
examples���������"3�0
.
output_0"�
output_0����������
U__inference_transform_features_layer_3_layer_call_and_return_conditional_losses_63642{:�7
0�-
+�(
&
text�
text���������
� "=�:
3�0
.
text_xf#� 
	0/text_xf���������
� �
U__inference_transform_features_layer_3_layer_call_and_return_conditional_losses_64483�A�>
7�4
2�/
-
text%�"
inputs/text���������
� "=�:
3�0
.
text_xf#� 
	0/text_xf���������
� �
:__inference_transform_features_layer_3_layer_call_fn_63616o:�7
0�-
+�(
&
text�
text���������
� "1�.
,
text_xf!�
text_xf����������
:__inference_transform_features_layer_3_layer_call_fn_64462vA�>
7�4
2�/
-
text%�"
inputs/text���������
� "1�.
,
text_xf!�
text_xf���������