//
//  MaterialDesignIconEnum
//
//  Warning: This API is maintained for backward compatibility.
//  For new code, use MaterialSymbolEnum instead.
//

#if !os(macOS)
import UIKit

/**
 * マテリアルデザインアイコンのコードを返すenum（後方互換用）
 * 新規コードではMaterialSymbolEnumを使用してください
 */
public enum MaterialDesignIconEnum: String, CaseIterable {
    case accessibility24px = "\u{e84e}"
    case accountBalance24px = "\u{e84f}"
    case accountBalanceWallet24px = "\u{e850}"
    case accountBox18px = "\u{e851}"
    case accountChild24px = "\u{e852}"
    case accountCircle18px = "\u{f20b}"
    case adb18px = "\u{e60e}"
    case add24px = "\u{e145}"
    case addBox24px = "\u{e146}"
    case addCircle24px = "\u{e3ba}"
    case addShoppingCart24px = "\u{e854}"
    case addToPhotos24px = "\u{e39d}"
    case adjust24px = "\u{e39e}"
    case alarm24px = "\u{e855}"
    case alarmAdd24px = "\u{e856}"
    case alarmOff24px = "\u{e857}"
    case alarmOn24px = "\u{e858}"
    case album24px = "\u{e019}"
    case android24px = "\u{e859}"
    case announcement24px = "\u{e87f}"
    case apps18px = "\u{e5c3}"
    case archive24px = "\u{e149}"
    case arrowBack18px = "\u{e5c4}"
    case arrowDropDown18px = "\u{e5c5}"
    case arrowDropDownCircle24px = "\u{e5c6}"
    case arrowDropUp18px = "\u{e5c7}"
    case arrowForward18px = "\u{e5c8}"
    case aspectRatio24px = "\u{e85b}"
    case assessment24px = "\u{f0cc}"
    case assignment24px = "\u{e85d}"
    case assignmentInd24px = "\u{e85e}"
    case assignmentLate24px = "\u{e85f}"
    case assignmentReturn24px = "\u{e860}"
    case assignmentReturned24px = "\u{e861}"
    case assignmentTurnedIn24px = "\u{e862}"
    case attachFile18px = "\u{e226}"
    case attachment18px = "\u{e2bc}"
    case attachMoney18px = "\u{e227}"
    case audiotrack24px = "\u{e405}"
    case autorenew24px = "\u{e863}"
    case avTimer24px = "\u{e01b}"
    case backspace24px = "\u{e14a}"
    case backup24px = "\u{e864}"
    case battery2024px = "\u{e853}"
    case battery5048px = "\u{e85a}"
    case battery6024px = "\u{e85c}"
    case batteryAlert18px = "\u{e19c}"
    case batteryCharging2018px = "\u{e867}"
    case batteryCharging2048px = "\u{e869}"
    case batteryCharging3024px = "\u{e86b}"
    case batteryCharging3048px = "\u{e86c}"
    case batteryCharging5018px = "\u{e86d}"
    case batteryCharging5048px = "\u{e86f}"
    case batteryCharging6018px = "\u{e870}"
    case batteryCharging6048px = "\u{e872}"
    case batteryCharging8024px = "\u{e874}"
    case batteryChargingFull18px = "\u{e1a3}"
    case batteryFull18px = "\u{e1a5}"
    case batteryUnknown18px = "\u{e1a6}"
    case beenhere24px = "\u{e52d}"
    case bluetooth24px = "\u{e1a7}"
    case bluetoothConnected24px = "\u{e1a8}"
    case bluetoothDisabled24px = "\u{e1a9}"
    case bluetoothSearching24px = "\u{e60f}"
    case blurCircular24px = "\u{e3a2}"
    case blurLinear24px = "\u{e3a3}"
    case blurOff24px = "\u{e3a4}"
    case blurOn24px = "\u{e3a5}"
    case book24px = "\u{e86e}"
    case bookmark24px = "\u{e8e7}"
    case borderAll18px = "\u{e228}"
    case borderBottom18px = "\u{e229}"
    case borderClear18px = "\u{e22a}"
    case borderColor18px = "\u{e22b}"
    case borderHorizontal18px = "\u{e22c}"
    case borderInner18px = "\u{e22d}"
    case borderLeft18px = "\u{e22e}"
    case borderOuter18px = "\u{e22f}"
    case borderRight18px = "\u{e230}"
    case borderStyle18px = "\u{e231}"
    case borderTop18px = "\u{e232}"
    case borderVertical18px = "\u{e233}"
    case brightness124px = "\u{ea2c}"
    case brightness148px = "\u{ea2d}"
    case brightness224px = "\u{ea2e}"
    case brightness248px = "\u{ea2f}"
    case brightness324px = "\u{ea30}"
    case brightness348px = "\u{ea31}"
    case brightness424px = "\u{ea32}"
    case brightness448px = "\u{ea33}"
    case brightness524px = "\u{ea34}"
    case brightness548px = "\u{ea35}"
    case brightness624px = "\u{ea36}"
    case brightness648px = "\u{ea37}"
    case brightness724px = "\u{ea38}"
    case brightness748px = "\u{ea39}"
    case brightnessAuto24px = "\u{e1ab}"
    case brightnessHigh24px = "\u{e1ac}"
    case brightnessLow24px = "\u{e1ad}"
    case brightnessMedium24px = "\u{e1ae}"
    case brush24px = "\u{e3ae}"
    case bugReport24px = "\u{e868}"
    case business24px = "\u{e7ee}"
    case cached24px = "\u{e86a}"
    case cake18px = "\u{e7e9}"
    case call24px = "\u{f0d4}"
    case callEnd24px = "\u{f0bc}"
    case callMade24px = "\u{e0b2}"
    case callMerge24px = "\u{e0b3}"
    case callMissed24px = "\u{e0b4}"
    case callReceived24px = "\u{e0b5}"
    case callSplit24px = "\u{e0b6}"
    case camera24px = "\u{e3af}"
    case cameraAlt24px = "\u{e412}"
    case cameraFront24px = "\u{f2c9}"
    case cameraRear24px = "\u{f2c8}"
    case cameraRoll24px = "\u{e3b3}"
    case cast24px = "\u{e307}"
    case castConnected24px = "\u{e308}"
    case centerFocusStrong24px = "\u{e3b4}"
    case centerFocusWeak24px = "\u{e3b5}"
    case chat24px = "\u{e0c9}"
    case check18px = "\u{e5ca}"
    case checkBox24px = "\u{e834}"
    case checkBoxOutlineBlank24px = "\u{e835}"
    case clear24px = "\u{e5cd}"
    case clearAll24px = "\u{e0b8}"
    case closedCaption24px = "\u{e996}"
    case cloud24px = "\u{f15c}"
    case cloudCircle18px = "\u{e2be}"
    case cloudDone24px = "\u{e2bf}"
    case cloudDownload24px = "\u{e2c0}"
    case cloudOff24px = "\u{e2c1}"
    case cloudUpload24px = "\u{e2c3}"
    case collections24px = "\u{e3d3}"
    case colorize24px = "\u{e3b8}"
    case colorLens24px = "\u{e40a}"
    case comment24px = "\u{e24c}"
    case compare24px = "\u{e3b9}"
    case computer24px = "\u{e31e}"
    case contacts24px = "\u{e0ba}"
    case contentCopy24px = "\u{e14d}"
    case contentCut24px = "\u{e14e}"
    case contentPaste24px = "\u{e14f}"
    case controlPointDuplicate24px = "\u{e3bb}"
    case create24px = "\u{f097}"
    case creditCard24px = "\u{e8a1}"
    case crop3224px = "\u{e3be}"
    case cropDin24px = "\u{e3c6}"
    case cropFree24px = "\u{e3c2}"
    case cropLandscape24px = "\u{e3c3}"
    case cropPortrait24px = "\u{e3c5}"
    case dashboard24px = "\u{e871}"
    case dataUsage24px = "\u{eff2}"
    case dehaze24px = "\u{e3c7}"
    case delete24px = "\u{e92e}"
    case description24px = "\u{e873}"
    case desktopMac24px = "\u{e30b}"
    case desktopWindows24px = "\u{e30c}"
    case details24px = "\u{e3c8}"
    case developerMode24px = "\u{f2e2}"
    case devices24px = "\u{e326}"
    case dialerSip24px = "\u{e0bb}"
    case dialpad24px = "\u{e0bc}"
    case directions24px = "\u{e52e}"
    case directionsBike24px = "\u{e52f}"
    case directionsBus24px = "\u{eff6}"
    case directionsCar24px = "\u{eff7}"
    case directionsFerry24px = "\u{eb43}"
    case directionsFerry48px = "\u{eb44}"
    case directionsSubway24px = "\u{effa}"
    case directionsTrain24px = "\u{eb47}"
    case directionsTrain48px = "\u{eb48}"
    case directionsWalk24px = "\u{e536}"
    case discFull24px = "\u{e610}"
    case dndForwardslash24px = "\u{ec00}"
    case dndForwardslash48px = "\u{ec01}"
    case dndOn24px = "\u{e7d0}"
    case dndOn48px = "\u{e7d1}"
    case dns24px = "\u{e875}"
    case dock24px = "\u{f2e0}"
    case done24px = "\u{e876}"
    case doneAll24px = "\u{e877}"
    case doNotDisturb24px = "\u{f08d}"
    case drafts24px = "\u{e151}"
    case dvr24px = "\u{e1b2}"
    case email24px = "\u{e159}"
    case equalizer24px = "\u{e01d}"
    case error18px = "\u{f8b6}"
    case event18px = "\u{e878}"
    case eventAvailable24px = "\u{e614}"
    case eventBusy24px = "\u{e615}"
    case eventNote18px = "\u{e616}"
    case exitToApp24px = "\u{e879}"
    case expandLess18px = "\u{e5ce}"
    case expandMore18px = "\u{e5cf}"
    case explicit24px = "\u{e01e}"
    case explore24px = "\u{e87a}"
    case exposure24px = "\u{e3f6}"
    case exposureMinus124px = "\u{ea74}"
    case exposureMinus148px = "\u{ea75}"
    case exposureMinus224px = "\u{ea76}"
    case exposureMinus248px = "\u{ea77}"
    case exposurePlus124px = "\u{ea78}"
    case exposurePlus148px = "\u{ea79}"
    case exposurePlus224px = "\u{ea7a}"
    case exposurePlus248px = "\u{ea7b}"
    case exposureZero24px = "\u{e3cf}"
    case extension24px = "\u{e87b}"
    case faceUnlock24px = "\u{f008}"
    case fastForward24px = "\u{e01f}"
    case fastRewind24px = "\u{e020}"
    case favorite24px = "\u{e87e}"
    case fileUpload24px = "\u{f09b}"
    case filter9Plus24px = "\u{ea90}"
    case filter9Plus48px = "\u{ea91}"
    case filterBAndW24px = "\u{e3db}"
    case filterCenterFocus24px = "\u{e3dc}"
    case filterDrama24px = "\u{e3dd}"
    case filterFrames24px = "\u{e3de}"
    case filterHdr24px = "\u{e3df}"
    case filterList24px = "\u{e152}"
    case filterNone24px = "\u{e3e0}"
    case filterTiltShift24px = "\u{e3e2}"
    case filterVintage24px = "\u{e3e3}"
    case findInPage24px = "\u{e880}"
    case findReplace24px = "\u{e881}"
    case flag24px = "\u{f0c6}"
    case flare24px = "\u{e3e4}"
    case flashAuto24px = "\u{e3e5}"
    case flashOff24px = "\u{e3e6}"
    case flashOn24px = "\u{e3e7}"
    case flight24px = "\u{e539}"
    case flip24px = "\u{e3e8}"
    case flipToBack24px = "\u{e882}"
    case flipToFront24px = "\u{e883}"
    case folder18px = "\u{e2c7}"
    case folderOpen18px = "\u{e2c8}"
    case folderShared18px = "\u{e2c9}"
    case folderSpecial24px = "\u{e617}"
    case formatAlignCenter18px = "\u{e234}"
    case formatAlignJustify18px = "\u{e235}"
    case formatAlignLeft18px = "\u{e236}"
    case formatAlignRight18px = "\u{e237}"
    case formatBold18px = "\u{e238}"
    case formatClear18px = "\u{e239}"
    case formatColorFill18px = "\u{e23a}"
    case formatColorReset18px = "\u{e23b}"
    case formatColorText18px = "\u{e23c}"
    case formatIndentDecrease18px = "\u{e23d}"
    case formatIndentIncrease18px = "\u{e23e}"
    case formatItalic18px = "\u{e23f}"
    case formatLineSpacing18px = "\u{e240}"
    case formatListBulleted18px = "\u{e241}"
    case formatListNumbered18px = "\u{e242}"
    case formatPaint18px = "\u{e243}"
    case formatQuote18px = "\u{e244}"
    case formatSize18px = "\u{e245}"
    case formatStrikethrough18px = "\u{e246}"
    case formatTextdirectionLToR18px = "\u{e247}"
    case formatTextdirectionRToL18px = "\u{e248}"
    case formatUnderline18px = "\u{e978}"
    case formatUnderline24px = "\u{e979}"
    case formatUnderline48px = "\u{e97a}"
    case forward24px = "\u{f57a}"
    case fullscreen18px = "\u{e5d0}"
    case fullscreenExit18px = "\u{e5d1}"
    case functions18px = "\u{e24a}"
    case games24px = "\u{e30f}"
    case gesture24px = "\u{e155}"
    case getApp24px = "\u{f090}"
    case gpsFixed24px = "\u{e55c}"
    case gpsNotFixed24px = "\u{e1b7}"
    case gpsOff24px = "\u{e1b6}"
    case grade24px = "\u{f09a}"
    case gradient24px = "\u{e3e9}"
    case grain24px = "\u{e3ea}"
    case gridOff24px = "\u{e3eb}"
    case gridOn24px = "\u{e3ec}"
    case group18px = "\u{ea21}"
    case groupAdd18px = "\u{e7f0}"
    case groupWork24px = "\u{e886}"
    case hdrOff24px = "\u{e3ed}"
    case hdrOn24px = "\u{e3ee}"
    case hdrStrong24px = "\u{e3f1}"
    case hdrWeak24px = "\u{e3f2}"
    case headset24px = "\u{f01f}"
    case headsetMic24px = "\u{e311}"
    case healing24px = "\u{e3f3}"
    case hearing24px = "\u{e023}"
    case help24px = "\u{e8fd}"
    case highlightRemove24px = "\u{e888}"
    case highQuality24px = "\u{e024}"
    case history24px = "\u{e8b3}"
    case home24px = "\u{e9b2}"
    case hotel24px = "\u{e549}"
    case https24px = "\u{e899}"
    case imageAspectRatio24px = "\u{e3f5}"
    case inbox24px = "\u{e156}"
    case info24px = "\u{e88e}"
    case input24px = "\u{e890}"
    case insertDriveFile18px = "\u{e66d}"
    case insertEmoticon18px = "\u{ea22}"
    case insertPhoto18px = "\u{e3f4}"
    case invertColors24px = "\u{e891}"
    case invertColorsOff24px = "\u{e0c4}"
    case invertColorsOn24px = "\u{e7da}"
    case invertColorsOn48px = "\u{e7db}"
    case keyboard24px = "\u{e312}"
    case keyboardAlt24px = "\u{f028}"
    case keyboardArrowDown24px = "\u{e313}"
    case keyboardArrowLeft24px = "\u{e314}"
    case keyboardArrowRight24px = "\u{e315}"
    case keyboardArrowUp24px = "\u{e316}"
    case keyboardBackspace24px = "\u{e317}"
    case keyboardCapslock24px = "\u{e318}"
    case keyboardControl24px = "\u{e9ec}"
    case keyboardControl48px = "\u{e9ed}"
    case keyboardHide24px = "\u{e31a}"
    case keyboardReturn24px = "\u{e31b}"
    case keyboardTab24px = "\u{e31c}"
    case label24px = "\u{e893}"
    case landscape24px = "\u{e564}"
    case language24px = "\u{e894}"
    case laptopChromebook24px = "\u{e31f}"
    case laptopMac24px = "\u{e320}"
    case laptopWindows24px = "\u{e321}"
    case launch24px = "\u{e89e}"
    case layers24px = "\u{e53b}"
    case layersClear24px = "\u{e53c}"
    case leakAdd24px = "\u{e3f8}"
    case leakRemove24px = "\u{e3f9}"
    case lens24px = "\u{e3fa}"
    case link24px = "\u{e250}"
    case list24px = "\u{e896}"
    case liveHelp24px = "\u{e0c6}"
    case localAirport24px = "\u{e53d}"
    case localAtm24px = "\u{e53e}"
    case localAttraction24px = "\u{eb59}"
    case localAttraction48px = "\u{eb5a}"
    case localBar24px = "\u{e540}"
    case localCarWash24px = "\u{e542}"
    case localConvenienceStore24px = "\u{e543}"
    case localDrink24px = "\u{e544}"
    case localFlorist24px = "\u{e545}"
    case localGasStation24px = "\u{e546}"
    case localHospital24px = "\u{e548}"
    case localLaundryService24px = "\u{e54a}"
    case localLibrary24px = "\u{e54b}"
    case localMall24px = "\u{e54c}"
    case localOffer24px = "\u{f05b}"
    case localParking24px = "\u{e54f}"
    case localPharmacy24px = "\u{e550}"
    case localPizza24px = "\u{e552}"
    case localPlay24px = "\u{e553}"
    case localPostOffice24px = "\u{e554}"
    case localPrintShop24px = "\u{eb85}"
    case localPrintShop48px = "\u{eb86}"
    case localRestaurant24px = "\u{eb87}"
    case localRestaurant48px = "\u{eb88}"
    case localSee24px = "\u{e557}"
    case localShipping24px = "\u{e558}"
    case localTaxi24px = "\u{e559}"
    case locationCity18px = "\u{e7f1}"
    case locationHistory24px = "\u{eb8f}"
    case locationHistory48px = "\u{eb90}"
    case locationOff24px = "\u{e0c7}"
    case lockOpen24px = "\u{e898}"
    case looks324px = "\u{e3fc}"
    case looksOne24px = "\u{e400}"
    case looksTwo24px = "\u{e401}"
    case loupe24px = "\u{e402}"
    case loyalty24px = "\u{e89a}"
    case map24px = "\u{e55b}"
    case markunreadMailbox24px = "\u{e89b}"
    case memory24px = "\u{e322}"
    case menu18px = "\u{e5d2}"
    case mergeType18px = "\u{e252}"
    case messenger24px = "\u{e7e4}"
    case messenger48px = "\u{e7e5}"
    case mic24px = "\u{e31d}"
    case micOff24px = "\u{e02b}"
    case mms24px = "\u{e618}"
    case modeComment18px = "\u{e253}"
    case more24px = "\u{e619}"
    case moreHoriz18px = "\u{e5d3}"
    case moreVert18px = "\u{e5d4}"
    case mouse24px = "\u{e323}"
    case movie24px = "\u{e404}"
    case myLibraryAdd24px = "\u{e76b}"
    case myLibraryAdd48px = "\u{e76c}"
    case myLibraryBooks24px = "\u{e76d}"
    case myLibraryBooks48px = "\u{e76e}"
    case myLibraryMusic24px = "\u{e76f}"
    case myLibraryMusic48px = "\u{e770}"
    case nature24px = "\u{e406}"
    case naturePeople24px = "\u{e407}"
    case navigateBefore24px = "\u{e5cb}"
    case navigateNext24px = "\u{e5cc}"
    case navigation24px = "\u{e55d}"
    case networkCell18px = "\u{e1b9}"
    case networkLocked24px = "\u{e61a}"
    case networkWifi18px = "\u{e1ba}"
    case newReleases24px = "\u{ef76}"
    case nfc24px = "\u{e1bb}"
    case noSim24px = "\u{e1ce}"
    case noteAdd24px = "\u{e89c}"
    case notifications24px = "\u{e7f5}"
    case notificationsOff24px = "\u{e7f6}"
    case notificationsOn24px = "\u{ec58}"
    case notificationsOn48px = "\u{ec59}"
    case notificationsPaused24px = "\u{e7f8}"
    case notInterested24px = "\u{f08c}"
    case nowWallpaper18px = "\u{e8b1}"
    case nowWallpaper24px = "\u{e8b2}"
    case nowWidgets18px = "\u{e8b4}"
    case nowWidgets24px = "\u{e8b5}"
    case openInBrowser24px = "\u{e89d}"
    case openWith24px = "\u{e89f}"
    case pages18px = "\u{e7f9}"
    case pageview24px = "\u{e8a0}"
    case panorama24px = "\u{e40b}"
    case panoramaFisheye24px = "\u{eaec}"
    case panoramaFisheye48px = "\u{eaed}"
    case panoramaHorizontal24px = "\u{e40d}"
    case panoramaVertical24px = "\u{e40e}"
    case panoramaWideAngle24px = "\u{e40f}"
    case partyMode24px = "\u{e7fa}"
    case pause24px = "\u{e034}"
    case pauseCircleFill24px = "\u{e777}"
    case pauseCircleFill48px = "\u{e778}"
    case pauseCircleOutline24px = "\u{e1a2}"
    case permCameraMic24px = "\u{e8a2}"
    case permContactCal24px = "\u{e8a3}"
    case permDataSetting24px = "\u{e8a4}"
    case permDeviceInfo24px = "\u{f2dc}"
    case permIdentity24px = "\u{f0d3}"
    case permMedia24px = "\u{e8a7}"
    case permPhoneMsg24px = "\u{e8a8}"
    case permScanWifi24px = "\u{e8a9}"
    case personAdd18px = "\u{ea4d}"
    case phoneAndroid24px = "\u{f2db}"
    case phoneBluetoothSpeaker24px = "\u{e61b}"
    case phoneForwarded24px = "\u{e61c}"
    case phoneInTalk24px = "\u{e61d}"
    case phoneIphone24px = "\u{f2da}"
    case phonelinkOff24px = "\u{f7a5}"
    case phoneLocked24px = "\u{e61e}"
    case phoneMissed24px = "\u{e61f}"
    case phonePaused24px = "\u{e620}"
    case photo24px = "\u{e432}"
    case photoAlbum24px = "\u{e411}"
    case photoLibrary24px = "\u{e413}"
    case pictureInPicture24px = "\u{e8aa}"
    case pinDrop24px = "\u{e55e}"
    case playArrow24px = "\u{e037}"
    case playCircleFill24px = "\u{e77d}"
    case playCircleFill48px = "\u{e77e}"
    case playCircleOutline24px = "\u{e77f}"
    case playCircleOutline48px = "\u{e780}"
    case playDownload24px = "\u{ec21}"
    case playDownload48px = "\u{ec22}"
    case playInstall24px = "\u{ec23}"
    case playInstall48px = "\u{ec24}"
    case playlistAdd24px = "\u{e03b}"
    case playShoppingBag24px = "\u{e781}"
    case playShoppingBag48px = "\u{e782}"
    case plusOne24px = "\u{e800}"
    case polymer24px = "\u{e8ab}"
    case portableWifiOff24px = "\u{f087}"
    case print24px = "\u{e8ad}"
    case public24px = "\u{e80b}"
    case publish18px = "\u{e255}"
    case queryBuilder24px = "\u{efd6}"
    case questionAnswer24px = "\u{e8af}"
    case queue24px = "\u{e03c}"
    case queueMusic24px = "\u{e03d}"
    case quickContactsDialer24px = "\u{e7ec}"
    case quickContactsDialer48px = "\u{e7ed}"
    case quickContactsMail48px = "\u{e7ef}"
    case radio24px = "\u{e03e}"
    case radioButtonOff24px = "\u{eb32}"
    case radioButtonOff48px = "\u{eb33}"
    case radioButtonOn24px = "\u{eb34}"
    case radioButtonOn48px = "\u{eb35}"
    case rateReview24px = "\u{e560}"
    case receipt24px = "\u{e8b0}"
    case recentActors24px = "\u{e03f}"
    case redeem24px = "\u{e8f6}"
    case redo24px = "\u{e15a}"
    case refresh18px = "\u{e5d5}"
    case remove24px = "\u{e15b}"
    case removeCircle24px = "\u{f08f}"
    case reorder24px = "\u{e8fe}"
    case repeat24px = "\u{e040}"
    case repeatOne24px = "\u{e041}"
    case replay24px = "\u{e042}"
    case reply24px = "\u{e15e}"
    case replyAll24px = "\u{e15f}"
    case report24px = "\u{f052}"
    case reportProblem24px = "\u{f083}"
    case restaurantMenu24px = "\u{e561}"
    case ringVolume24px = "\u{f0dd}"
    case room24px = "\u{f1db}"
    case rotateLeft24px = "\u{e419}"
    case rotateRight24px = "\u{e41a}"
    case satellite24px = "\u{e562}"
    case save24px = "\u{e161}"
    case school24px = "\u{e80c}"
    case screenLockLandscape24px = "\u{f2d8}"
    case screenLockPortrait24px = "\u{f2be}"
    case screenLockRotation24px = "\u{f2d6}"
    case screenRotation24px = "\u{f2d5}"
    case sdStorage24px = "\u{e623}"
    case search24px = "\u{e8b6}"
    case security24px = "\u{e32a}"
    case selectAll24px = "\u{e162}"
    case send24px = "\u{e163}"
    case settings24px = "\u{e8b8}"
    case settingsApplications24px = "\u{e8b9}"
    case settingsBackupRestore24px = "\u{e8ba}"
    case settingsBluetooth24px = "\u{e8bb}"
    case settingsCell24px = "\u{f2d1}"
    case settingsDisplay24px = "\u{e8bd}"
    case settingsEthernet24px = "\u{e8be}"
    case settingsInputAntenna24px = "\u{e8bf}"
    case settingsInputComponent24px = "\u{e8c1}"
    case settingsInputHdmi24px = "\u{e8c2}"
    case settingsInputSvideo24px = "\u{e8c3}"
    case settingsOverscan24px = "\u{e8c4}"
    case settingsPhone24px = "\u{e8c5}"
    case settingsPower24px = "\u{e8c6}"
    case settingsRemote24px = "\u{e8c7}"
    case settingsSystemDaydream24px = "\u{e1c3}"
    case settingsVoice24px = "\u{e8c8}"
    case share24px = "\u{e80d}"
    case shop24px = "\u{e8c9}"
    case shoppingBasket24px = "\u{e8cb}"
    case shoppingCart24px = "\u{e8cc}"
    case shopTwo24px = "\u{e8ca}"
    case shuffle24px = "\u{e043}"
    case signalCellular4Bar18px = "\u{e8cf}"
    case signalCellularConnectedNoInternet3Bar18px = "\u{e8db}"
    case signalCellularConnectedNoInternet3Bar24px = "\u{e8dc}"
    case signalCellularConnectedNoInternet4Bar48px = "\u{e8e0}"
    case signalCellularNull18px = "\u{e1cf}"
    case signalCellularOff18px = "\u{e1d0}"
    case signalWifi4Bar48px = "\u{e8f7}"
    case signalWifiOff18px = "\u{e1da}"
    case signalWifiStatusbar1Bar26x24px = "\u{e8fb}"
    case signalWifiStatusbar2Bar26x24px = "\u{e8fc}"
    case signalWifiStatusbarConnectedNoInternet126x24px = "\u{e8ff}"
    case signalWifiStatusbarConnectedNoInternet226x24px = "\u{e900}"
    case signalWifiStatusbarConnectedNoInternet26x24px = "\u{e903}"
    case signalWifiStatusbarConnectedNoInternet326x24px = "\u{e901}"
    case signalWifiStatusbarConnectedNoInternet426x24px = "\u{e902}"
    case signalWifiStatusbarNotConnected26x24px = "\u{e904}"
    case signalWifiStatusbarNull26x24px = "\u{e905}"
    case simCard24px = "\u{e32b}"
    case simCardAlert24px = "\u{f057}"
    case skipNext24px = "\u{e044}"
    case skipPrevious24px = "\u{e045}"
    case slideshow24px = "\u{e41b}"
    case snooze24px = "\u{e046}"
    case sort24px = "\u{e164}"
    case speaker24px = "\u{e32d}"
    case speakerNotes24px = "\u{e8cd}"
    case spellcheck24px = "\u{e8ce}"
    case starHalf24px = "\u{e839}"
    case starRate24px = "\u{f0ec}"
    case stars24px = "\u{e8d0}"
    case stayCurrentLandscape24px = "\u{ed3e}"
    case stayCurrentPortrait24px = "\u{e7ba}"
    case stayPrimaryPortrait24px = "\u{f2d3}"
    case stop24px = "\u{e047}"
    case storage24px = "\u{e1db}"
    case store24px = "\u{e8d1}"
    case straighten24px = "\u{e41c}"
    case style24px = "\u{e41d}"
    case subject24px = "\u{e8d2}"
    case subtitles24px = "\u{e048}"
    case supervisorAccount24px = "\u{e8d3}"
    case surroundSound24px = "\u{e049}"
    case swapCalls24px = "\u{e0d7}"
    case swapHoriz24px = "\u{e8d4}"
    case swapVert24px = "\u{e8d5}"
    case swapVertCircle24px = "\u{e8d6}"
    case switchCamera24px = "\u{e41e}"
    case switchVideo24px = "\u{e41f}"
    case sync24px = "\u{e627}"
    case syncDisabled24px = "\u{e628}"
    case syncProblem24px = "\u{e629}"
    case systemUpdate24px = "\u{f2cd}"
    case systemUpdateTv24px = "\u{e8d7}"
    case tab24px = "\u{e8d8}"
    case tablet24px = "\u{e32f}"
    case tabletAndroid24px = "\u{e330}"
    case tabletMac24px = "\u{e331}"
    case tabUnselected24px = "\u{e8d9}"
    case tapAndPlay24px = "\u{f2cc}"
    case textFormat24px = "\u{e165}"
    case textsms24px = "\u{e625}"
    case texture24px = "\u{e421}"
    case theaters24px = "\u{e8da}"
    case threeDRotation24px = "\u{e84d}"
    case thumbDown24px = "\u{f578}"
    case thumbsUpDown24px = "\u{e8dd}"
    case thumbUp24px = "\u{f577}"
    case timelapse24px = "\u{e422}"
    case timer324px = "\u{e425}"
    case timerAuto24px = "\u{eb1a}"
    case timerAuto48px = "\u{eb1b}"
    case timerOff24px = "\u{e426}"
    case toc24px = "\u{e8de}"
    case today24px = "\u{e8df}"
    case tonality24px = "\u{e427}"
    case trackChanges24px = "\u{e8e1}"
    case traffic24px = "\u{e565}"
    case transform24px = "\u{e428}"
    case translate24px = "\u{e8e2}"
    case trendingDown24px = "\u{e8e3}"
    case trendingNeutral24px = "\u{e8e4}"
    case trendingUp24px = "\u{e8e5}"
    case tune24px = "\u{e429}"
    case tv24px = "\u{e63b}"
    case undo24px = "\u{e166}"
    case unfoldLess18px = "\u{e5d6}"
    case unfoldMore18px = "\u{e5d7}"
    case usb18px = "\u{e1e0}"
    case verifiedUser24px = "\u{f013}"
    case verticalAlignBottom18px = "\u{e258}"
    case verticalAlignCenter18px = "\u{e259}"
    case verticalAlignTop18px = "\u{e25a}"
    case vibration18px = "\u{f2cb}"
    case videocam24px = "\u{e04b}"
    case videocamOff24px = "\u{e04c}"
    case videoCollection24px = "\u{e7a1}"
    case videoCollection48px = "\u{e7a2}"
    case viewAgenda24px = "\u{e8e9}"
    case viewArray24px = "\u{e8ea}"
    case viewCarousel24px = "\u{e8eb}"
    case viewColumn24px = "\u{e8ec}"
    case viewDay24px = "\u{e8ed}"
    case viewHeadline24px = "\u{e8ee}"
    case viewList24px = "\u{e8ef}"
    case viewModule24px = "\u{e8f0}"
    case viewQuilt24px = "\u{e8f1}"
    case viewStream24px = "\u{e8f2}"
    case viewWeek24px = "\u{e8f3}"
    case visibility24px = "\u{e8f4}"
    case visibilityOff24px = "\u{e8f5}"
    case voiceChat24px = "\u{e62e}"
    case voicemail24px = "\u{e0d9}"
    case volumeDown18px = "\u{e04d}"
    case volumeMute18px = "\u{e04e}"
    case volumeOff24px = "\u{e04f}"
    case volumeUp18px = "\u{e050}"
    case vpnKey24px = "\u{e0da}"
    case vpnLock24px = "\u{e62f}"
    case walletGiftcard24px = "\u{e73d}"
    case walletGiftcard48px = "\u{e73e}"
    case walletMembership24px = "\u{e73f}"
    case walletMembership48px = "\u{e740}"
    case walletTravel24px = "\u{e741}"
    case walletTravel48px = "\u{e742}"
    case watch24px = "\u{e334}"
    case wbAuto24px = "\u{e42c}"
    case wbIncandescent24px = "\u{e42e}"
    case wbIrradescent24px = "\u{eb2a}"
    case wbIrradescent48px = "\u{eb2b}"
    case wbSunny24px = "\u{e430}"
    case web24px = "\u{e051}"
    case whatshot18px = "\u{e80e}"
    case wifiLock24px = "\u{e1e1}"
    case wifiTethering24px = "\u{e1e2}"
    case work24px = "\u{e943}"
    case wrapText18px = "\u{e25b}"
}

// MARK: - Backward compatible aliases
public extension MaterialDesignIconEnum {
    static var accessAlarm24px: MaterialDesignIconEnum { .alarm24px }
    static var accessAlarm48px: MaterialDesignIconEnum { .alarm24px }
    static var accessAlarms24px: MaterialDesignIconEnum { .alarm24px }
    static var accessAlarms48px: MaterialDesignIconEnum { .alarm24px }
    static var accessibility48px: MaterialDesignIconEnum { .accessibility24px }
    static var accessTime24px: MaterialDesignIconEnum { .queryBuilder24px }
    static var accessTime48px: MaterialDesignIconEnum { .queryBuilder24px }
    static var accountBalance48px: MaterialDesignIconEnum { .accountBalance24px }
    static var accountBalanceWallet48px: MaterialDesignIconEnum { .accountBalanceWallet24px }
    static var accountBox24px: MaterialDesignIconEnum { .accountBox18px }
    static var accountBox48px: MaterialDesignIconEnum { .accountBox18px }
    static var accountChild48px: MaterialDesignIconEnum { .accountChild24px }
    static var accountCircle24px: MaterialDesignIconEnum { .accountCircle18px }
    static var accountCircle48px: MaterialDesignIconEnum { .accountCircle18px }
    static var adb24px: MaterialDesignIconEnum { .adb18px }
    static var adb48px: MaterialDesignIconEnum { .adb18px }
    static var add48px: MaterialDesignIconEnum { .add24px }
    static var addAlarm24px: MaterialDesignIconEnum { .alarmAdd24px }
    static var addAlarm48px: MaterialDesignIconEnum { .alarmAdd24px }
    static var addBox48px: MaterialDesignIconEnum { .addBox24px }
    static var addCircle48px: MaterialDesignIconEnum { .addCircle24px }
    static var addCircleOutline24px: MaterialDesignIconEnum { .addCircle24px }
    static var addCircleOutline48px: MaterialDesignIconEnum { .addCircle24px }
    static var addShoppingCart48px: MaterialDesignIconEnum { .addShoppingCart24px }
    static var addToPhotos48px: MaterialDesignIconEnum { .addToPhotos24px }
    static var adjust48px: MaterialDesignIconEnum { .adjust24px }
    static var airplanemodeOff24px: MaterialDesignIconEnum { .accessibility24px }
    static var airplanemodeOff48px: MaterialDesignIconEnum { .accountBalance24px }
    static var airplanemodeOn24px: MaterialDesignIconEnum { .accountBalanceWallet24px }
    static var airplanemodeOn48px: MaterialDesignIconEnum { .accountBox18px }
    static var alarm48px: MaterialDesignIconEnum { .alarm24px }
    static var alarmAdd48px: MaterialDesignIconEnum { .alarmAdd24px }
    static var alarmOff48px: MaterialDesignIconEnum { .alarmOff24px }
    static var alarmOn48px: MaterialDesignIconEnum { .alarmOn24px }
    static var album48px: MaterialDesignIconEnum { .album24px }
    static var android48px: MaterialDesignIconEnum { .android24px }
    static var announcement48px: MaterialDesignIconEnum { .announcement24px }
    static var apps24px: MaterialDesignIconEnum { .apps18px }
    static var apps36px: MaterialDesignIconEnum { .apps18px }
    static var apps48px: MaterialDesignIconEnum { .apps18px }
    static var archive48px: MaterialDesignIconEnum { .archive24px }
    static var arrowBack24px: MaterialDesignIconEnum { .arrowBack18px }
    static var arrowBack36px: MaterialDesignIconEnum { .arrowBack18px }
    static var arrowBack48px: MaterialDesignIconEnum { .arrowBack18px }
    static var arrowDropDown24px: MaterialDesignIconEnum { .arrowDropDown18px }
    static var arrowDropDown36px: MaterialDesignIconEnum { .arrowDropDown18px }
    static var arrowDropDown48px: MaterialDesignIconEnum { .arrowDropDown18px }
    static var arrowDropDownCircle48px: MaterialDesignIconEnum { .arrowDropDownCircle24px }
    static var arrowDropUp24px: MaterialDesignIconEnum { .arrowDropUp18px }
    static var arrowDropUp36px: MaterialDesignIconEnum { .arrowDropUp18px }
    static var arrowDropUp48px: MaterialDesignIconEnum { .arrowDropUp18px }
    static var arrowForward24px: MaterialDesignIconEnum { .arrowForward18px }
    static var arrowForward36px: MaterialDesignIconEnum { .arrowForward18px }
    static var arrowForward48px: MaterialDesignIconEnum { .arrowForward18px }
    static var aspectRatio48px: MaterialDesignIconEnum { .aspectRatio24px }
    static var assessment48px: MaterialDesignIconEnum { .assessment24px }
    static var assignment48px: MaterialDesignIconEnum { .assignment24px }
    static var assignmentInd48px: MaterialDesignIconEnum { .assignmentInd24px }
    static var assignmentLate48px: MaterialDesignIconEnum { .assignmentLate24px }
    static var assignmentReturn48px: MaterialDesignIconEnum { .assignmentReturn24px }
    static var assignmentReturned48px: MaterialDesignIconEnum { .assignmentReturned24px }
    static var assignmentTurnedIn48px: MaterialDesignIconEnum { .assignmentTurnedIn24px }
    static var assistantPhoto24px: MaterialDesignIconEnum { .flag24px }
    static var assistantPhoto48px: MaterialDesignIconEnum { .flag24px }
    static var attachFile24px: MaterialDesignIconEnum { .attachFile18px }
    static var attachFile48px: MaterialDesignIconEnum { .attachFile18px }
    static var attachment24px: MaterialDesignIconEnum { .attachment18px }
    static var attachment48px: MaterialDesignIconEnum { .attachment18px }
    static var attachMoney24px: MaterialDesignIconEnum { .attachMoney18px }
    static var attachMoney48px: MaterialDesignIconEnum { .attachMoney18px }
    static var audiotrack48px: MaterialDesignIconEnum { .audiotrack24px }
    static var autorenew48px: MaterialDesignIconEnum { .autorenew24px }
    static var avTimer48px: MaterialDesignIconEnum { .avTimer24px }
    static var backspace48px: MaterialDesignIconEnum { .backspace24px }
    static var backup48px: MaterialDesignIconEnum { .backup24px }
    static var battery2018px: MaterialDesignIconEnum { .accountChild24px }
    static var battery2048px: MaterialDesignIconEnum { .addShoppingCart24px }
    static var battery3018px: MaterialDesignIconEnum { .alarm24px }
    static var battery3024px: MaterialDesignIconEnum { .alarmAdd24px }
    static var battery3048px: MaterialDesignIconEnum { .alarmOff24px }
    static var battery5018px: MaterialDesignIconEnum { .alarmOn24px }
    static var battery5024px: MaterialDesignIconEnum { .android24px }
    static var battery6018px: MaterialDesignIconEnum { .aspectRatio24px }
    static var battery6048px: MaterialDesignIconEnum { .assignment24px }
    static var battery8018px: MaterialDesignIconEnum { .assignmentInd24px }
    static var battery8024px: MaterialDesignIconEnum { .assignmentLate24px }
    static var battery8048px: MaterialDesignIconEnum { .assignmentReturn24px }
    static var battery9018px: MaterialDesignIconEnum { .assignmentReturned24px }
    static var battery9024px: MaterialDesignIconEnum { .assignmentTurnedIn24px }
    static var battery9048px: MaterialDesignIconEnum { .autorenew24px }
    static var batteryAlert24px: MaterialDesignIconEnum { .batteryAlert18px }
    static var batteryAlert48px: MaterialDesignIconEnum { .batteryAlert18px }
    static var batteryCharging2024px: MaterialDesignIconEnum { .bugReport24px }
    static var batteryCharging3018px: MaterialDesignIconEnum { .cached24px }
    static var batteryCharging5024px: MaterialDesignIconEnum { .book24px }
    static var batteryCharging6024px: MaterialDesignIconEnum { .dashboard24px }
    static var batteryCharging8018px: MaterialDesignIconEnum { .description24px }
    static var batteryCharging8048px: MaterialDesignIconEnum { .dns24px }
    static var batteryCharging9018px: MaterialDesignIconEnum { .done24px }
    static var batteryCharging9024px: MaterialDesignIconEnum { .doneAll24px }
    static var batteryCharging9048px: MaterialDesignIconEnum { .event18px }
    static var batteryChargingFull24px: MaterialDesignIconEnum { .batteryChargingFull18px }
    static var batteryChargingFull48px: MaterialDesignIconEnum { .batteryChargingFull18px }
    static var batteryFull24px: MaterialDesignIconEnum { .batteryFull18px }
    static var batteryFull48px: MaterialDesignIconEnum { .batteryFull18px }
    static var batteryStd18px: MaterialDesignIconEnum { .batteryFull18px }
    static var batteryStd24px: MaterialDesignIconEnum { .batteryFull18px }
    static var batteryStd48px: MaterialDesignIconEnum { .batteryFull18px }
    static var batteryUnknown24px: MaterialDesignIconEnum { .batteryUnknown18px }
    static var batteryUnknown48px: MaterialDesignIconEnum { .batteryUnknown18px }
    static var beenhere48px: MaterialDesignIconEnum { .beenhere24px }
    static var block24px: MaterialDesignIconEnum { .notInterested24px }
    static var block48px: MaterialDesignIconEnum { .notInterested24px }
    static var bluetooth48px: MaterialDesignIconEnum { .bluetooth24px }
    static var bluetoothAudio24px: MaterialDesignIconEnum { .bluetoothSearching24px }
    static var bluetoothAudio48px: MaterialDesignIconEnum { .bluetoothSearching24px }
    static var bluetoothConnected48px: MaterialDesignIconEnum { .bluetoothConnected24px }
    static var bluetoothDisabled48px: MaterialDesignIconEnum { .bluetoothDisabled24px }
    static var bluetoothSearching48px: MaterialDesignIconEnum { .bluetoothSearching24px }
    static var blurCircular48px: MaterialDesignIconEnum { .blurCircular24px }
    static var blurLinear48px: MaterialDesignIconEnum { .blurLinear24px }
    static var blurOff48px: MaterialDesignIconEnum { .blurOff24px }
    static var blurOn48px: MaterialDesignIconEnum { .blurOn24px }
    static var book48px: MaterialDesignIconEnum { .book24px }
    static var bookmark48px: MaterialDesignIconEnum { .bookmark24px }
    static var bookmarkOutline24px: MaterialDesignIconEnum { .bookmark24px }
    static var bookmarkOutline48px: MaterialDesignIconEnum { .bookmark24px }
    static var borderAll24px: MaterialDesignIconEnum { .borderAll18px }
    static var borderAll48px: MaterialDesignIconEnum { .borderAll18px }
    static var borderBottom24px: MaterialDesignIconEnum { .borderBottom18px }
    static var borderBottom48px: MaterialDesignIconEnum { .borderBottom18px }
    static var borderClear24px: MaterialDesignIconEnum { .borderClear18px }
    static var borderClear48px: MaterialDesignIconEnum { .borderClear18px }
    static var borderColor24px: MaterialDesignIconEnum { .borderColor18px }
    static var borderColor48px: MaterialDesignIconEnum { .borderColor18px }
    static var borderHorizontal24px: MaterialDesignIconEnum { .borderHorizontal18px }
    static var borderHorizontal48px: MaterialDesignIconEnum { .borderHorizontal18px }
    static var borderInner24px: MaterialDesignIconEnum { .borderInner18px }
    static var borderInner48px: MaterialDesignIconEnum { .borderInner18px }
    static var borderLeft24px: MaterialDesignIconEnum { .borderLeft18px }
    static var borderLeft48px: MaterialDesignIconEnum { .borderLeft18px }
    static var borderOuter24px: MaterialDesignIconEnum { .borderOuter18px }
    static var borderOuter48px: MaterialDesignIconEnum { .borderOuter18px }
    static var borderRight24px: MaterialDesignIconEnum { .borderRight18px }
    static var borderRight48px: MaterialDesignIconEnum { .borderRight18px }
    static var borderStyle24px: MaterialDesignIconEnum { .borderStyle18px }
    static var borderStyle48px: MaterialDesignIconEnum { .borderStyle18px }
    static var borderTop24px: MaterialDesignIconEnum { .borderTop18px }
    static var borderTop48px: MaterialDesignIconEnum { .borderTop18px }
    static var borderVertical24px: MaterialDesignIconEnum { .borderVertical18px }
    static var borderVertical48px: MaterialDesignIconEnum { .borderVertical18px }
    static var brightnessAuto48px: MaterialDesignIconEnum { .brightnessAuto24px }
    static var brightnessHigh48px: MaterialDesignIconEnum { .brightnessHigh24px }
    static var brightnessLow48px: MaterialDesignIconEnum { .brightnessLow24px }
    static var brightnessMedium48px: MaterialDesignIconEnum { .brightnessMedium24px }
    static var brush48px: MaterialDesignIconEnum { .brush24px }
    static var bugReport48px: MaterialDesignIconEnum { .bugReport24px }
    static var business48px: MaterialDesignIconEnum { .business24px }
    static var cached48px: MaterialDesignIconEnum { .cached24px }
    static var cake24px: MaterialDesignIconEnum { .cake18px }
    static var cake48px: MaterialDesignIconEnum { .cake18px }
    static var call48px: MaterialDesignIconEnum { .call24px }
    static var callEnd48px: MaterialDesignIconEnum { .callEnd24px }
    static var callMade48px: MaterialDesignIconEnum { .callMade24px }
    static var callMerge48px: MaterialDesignIconEnum { .callMerge24px }
    static var callMissed48px: MaterialDesignIconEnum { .callMissed24px }
    static var callReceived48px: MaterialDesignIconEnum { .callReceived24px }
    static var callSplit48px: MaterialDesignIconEnum { .callSplit24px }
    static var camera48px: MaterialDesignIconEnum { .camera24px }
    static var cameraAlt48px: MaterialDesignIconEnum { .cameraAlt24px }
    static var cameraFront48px: MaterialDesignIconEnum { .cameraFront24px }
    static var cameraRear48px: MaterialDesignIconEnum { .cameraRear24px }
    static var cameraRoll48px: MaterialDesignIconEnum { .cameraRoll24px }
    static var cancel18px: MaterialDesignIconEnum { .highlightRemove24px }
    static var cancel24px: MaterialDesignIconEnum { .highlightRemove24px }
    static var cancel36px: MaterialDesignIconEnum { .highlightRemove24px }
    static var cancel48px: MaterialDesignIconEnum { .highlightRemove24px }
    static var cast48px: MaterialDesignIconEnum { .cast24px }
    static var castConnected48px: MaterialDesignIconEnum { .castConnected24px }
    static var centerFocusStrong48px: MaterialDesignIconEnum { .centerFocusStrong24px }
    static var centerFocusWeak48px: MaterialDesignIconEnum { .centerFocusWeak24px }
    static var chat48px: MaterialDesignIconEnum { .chat24px }
    static var check24px: MaterialDesignIconEnum { .check18px }
    static var check36px: MaterialDesignIconEnum { .check18px }
    static var check48px: MaterialDesignIconEnum { .check18px }
    static var checkBox48px: MaterialDesignIconEnum { .checkBox24px }
    static var checkBoxOutlineBlank48px: MaterialDesignIconEnum { .checkBoxOutlineBlank24px }
    static var chevronLeft18px: MaterialDesignIconEnum { .navigateBefore24px }
    static var chevronLeft24px: MaterialDesignIconEnum { .navigateBefore24px }
    static var chevronLeft36px: MaterialDesignIconEnum { .navigateBefore24px }
    static var chevronLeft48px: MaterialDesignIconEnum { .navigateBefore24px }
    static var chevronRight18px: MaterialDesignIconEnum { .navigateNext24px }
    static var chevronRight24px: MaterialDesignIconEnum { .navigateNext24px }
    static var chevronRight36px: MaterialDesignIconEnum { .navigateNext24px }
    static var chevronRight48px: MaterialDesignIconEnum { .navigateNext24px }
    static var class24px: MaterialDesignIconEnum { .book24px }
    static var class48px: MaterialDesignIconEnum { .book24px }
    static var clear48px: MaterialDesignIconEnum { .clear24px }
    static var clearAll48px: MaterialDesignIconEnum { .clearAll24px }
    static var close18px: MaterialDesignIconEnum { .clear24px }
    static var close24px: MaterialDesignIconEnum { .clear24px }
    static var close36px: MaterialDesignIconEnum { .clear24px }
    static var close48px: MaterialDesignIconEnum { .clear24px }
    static var closedCaption48px: MaterialDesignIconEnum { .closedCaption24px }
    static var cloud48px: MaterialDesignIconEnum { .cloud24px }
    static var cloudCircle24px: MaterialDesignIconEnum { .cloudCircle18px }
    static var cloudCircle48px: MaterialDesignIconEnum { .cloudCircle18px }
    static var cloudDone48px: MaterialDesignIconEnum { .cloudDone24px }
    static var cloudDownload48px: MaterialDesignIconEnum { .cloudDownload24px }
    static var cloudOff48px: MaterialDesignIconEnum { .cloudOff24px }
    static var cloudQueue24px: MaterialDesignIconEnum { .cloud24px }
    static var cloudQueue48px: MaterialDesignIconEnum { .cloud24px }
    static var cloudUpload48px: MaterialDesignIconEnum { .cloudUpload24px }
    static var collections48px: MaterialDesignIconEnum { .collections24px }
    static var colorize48px: MaterialDesignIconEnum { .colorize24px }
    static var colorLens48px: MaterialDesignIconEnum { .colorLens24px }
    static var comment48px: MaterialDesignIconEnum { .comment24px }
    static var compare48px: MaterialDesignIconEnum { .compare24px }
    static var computer48px: MaterialDesignIconEnum { .computer24px }
    static var contacts48px: MaterialDesignIconEnum { .contacts24px }
    static var contentCopy48px: MaterialDesignIconEnum { .contentCopy24px }
    static var contentCut48px: MaterialDesignIconEnum { .contentCut24px }
    static var contentPaste48px: MaterialDesignIconEnum { .contentPaste24px }
    static var controlPoint24px: MaterialDesignIconEnum { .addCircle24px }
    static var controlPoint48px: MaterialDesignIconEnum { .addCircle24px }
    static var controlPointDuplicate48px: MaterialDesignIconEnum { .controlPointDuplicate24px }
    static var create48px: MaterialDesignIconEnum { .create24px }
    static var creditCard48px: MaterialDesignIconEnum { .creditCard24px }
    static var crop16924px: MaterialDesignIconEnum { .crop3224px }
    static var crop16948px: MaterialDesignIconEnum { .crop3224px }
    static var crop24px: MaterialDesignIconEnum { .crop3224px }
    static var crop3248px: MaterialDesignIconEnum { .crop3224px }
    static var crop48px: MaterialDesignIconEnum { .crop3224px }
    static var crop5424px: MaterialDesignIconEnum { .crop3224px }
    static var crop5448px: MaterialDesignIconEnum { .crop3224px }
    static var crop7524px: MaterialDesignIconEnum { .crop3224px }
    static var crop7548px: MaterialDesignIconEnum { .crop3224px }
    static var cropDin48px: MaterialDesignIconEnum { .cropDin24px }
    static var cropFree48px: MaterialDesignIconEnum { .cropFree24px }
    static var cropLandscape48px: MaterialDesignIconEnum { .cropLandscape24px }
    static var cropOriginal24px: MaterialDesignIconEnum { .insertPhoto18px }
    static var cropOriginal48px: MaterialDesignIconEnum { .insertPhoto18px }
    static var cropPortrait48px: MaterialDesignIconEnum { .cropPortrait24px }
    static var cropSquare24px: MaterialDesignIconEnum { .cropDin24px }
    static var cropSquare48px: MaterialDesignIconEnum { .cropDin24px }
    static var dashboard48px: MaterialDesignIconEnum { .dashboard24px }
    static var dataUsage48px: MaterialDesignIconEnum { .dataUsage24px }
    static var dehaze48px: MaterialDesignIconEnum { .dehaze24px }
    static var delete48px: MaterialDesignIconEnum { .delete24px }
    static var description48px: MaterialDesignIconEnum { .description24px }
    static var desktopMac48px: MaterialDesignIconEnum { .desktopMac24px }
    static var desktopWindows48px: MaterialDesignIconEnum { .desktopWindows24px }
    static var details48px: MaterialDesignIconEnum { .details24px }
    static var developerMode48px: MaterialDesignIconEnum { .developerMode24px }
    static var devices48px: MaterialDesignIconEnum { .devices24px }
    static var dialerSip48px: MaterialDesignIconEnum { .dialerSip24px }
    static var dialpad48px: MaterialDesignIconEnum { .dialpad24px }
    static var directions48px: MaterialDesignIconEnum { .directions24px }
    static var directionsBike48px: MaterialDesignIconEnum { .directionsBike24px }
    static var directionsBus48px: MaterialDesignIconEnum { .directionsBus24px }
    static var directionsCar48px: MaterialDesignIconEnum { .directionsCar24px }
    static var directionsSubway48px: MaterialDesignIconEnum { .directionsSubway24px }
    static var directionsTransit24px: MaterialDesignIconEnum { .directionsSubway24px }
    static var directionsTransit48px: MaterialDesignIconEnum { .directionsSubway24px }
    static var directionsWalk48px: MaterialDesignIconEnum { .directionsWalk24px }
    static var discFull48px: MaterialDesignIconEnum { .discFull24px }
    static var dns48px: MaterialDesignIconEnum { .dns24px }
    static var dock48px: MaterialDesignIconEnum { .dock24px }
    static var domain18px: MaterialDesignIconEnum { .business24px }
    static var domain24px: MaterialDesignIconEnum { .business24px }
    static var domain48px: MaterialDesignIconEnum { .business24px }
    static var done48px: MaterialDesignIconEnum { .done24px }
    static var doneAll48px: MaterialDesignIconEnum { .doneAll24px }
    static var doNotDisturb48px: MaterialDesignIconEnum { .doNotDisturb24px }
    static var drafts48px: MaterialDesignIconEnum { .drafts24px }
    static var driveEta24px: MaterialDesignIconEnum { .directionsCar24px }
    static var driveEta48px: MaterialDesignIconEnum { .directionsCar24px }
    static var dvr48px: MaterialDesignIconEnum { .dvr24px }
    static var edit24px: MaterialDesignIconEnum { .create24px }
    static var edit48px: MaterialDesignIconEnum { .create24px }
    static var email48px: MaterialDesignIconEnum { .email24px }
    static var equalizer48px: MaterialDesignIconEnum { .equalizer24px }
    static var error24px: MaterialDesignIconEnum { .error18px }
    static var error36px: MaterialDesignIconEnum { .error18px }
    static var error48px: MaterialDesignIconEnum { .error18px }
    static var event24px: MaterialDesignIconEnum { .event18px }
    static var event48px: MaterialDesignIconEnum { .event18px }
    static var eventAvailable48px: MaterialDesignIconEnum { .eventAvailable24px }
    static var eventBusy48px: MaterialDesignIconEnum { .eventBusy24px }
    static var eventNote24px: MaterialDesignIconEnum { .eventNote18px }
    static var eventNote48px: MaterialDesignIconEnum { .eventNote18px }
    static var exitToApp48px: MaterialDesignIconEnum { .exitToApp24px }
    static var expandLess24px: MaterialDesignIconEnum { .expandLess18px }
    static var expandLess36px: MaterialDesignIconEnum { .expandLess18px }
    static var expandLess48px: MaterialDesignIconEnum { .expandLess18px }
    static var expandMore24px: MaterialDesignIconEnum { .expandMore18px }
    static var expandMore36px: MaterialDesignIconEnum { .expandMore18px }
    static var expandMore48px: MaterialDesignIconEnum { .expandMore18px }
    static var explicit48px: MaterialDesignIconEnum { .explicit24px }
    static var explore48px: MaterialDesignIconEnum { .explore24px }
    static var exposure48px: MaterialDesignIconEnum { .exposure24px }
    static var exposureZero48px: MaterialDesignIconEnum { .exposureZero24px }
    static var extension48px: MaterialDesignIconEnum { .extension24px }
    static var faceUnlock48px: MaterialDesignIconEnum { .faceUnlock24px }
    static var fastForward48px: MaterialDesignIconEnum { .fastForward24px }
    static var fastRewind48px: MaterialDesignIconEnum { .fastRewind24px }
    static var favorite48px: MaterialDesignIconEnum { .favorite24px }
    static var favoriteOutline24px: MaterialDesignIconEnum { .favorite24px }
    static var favoriteOutline48px: MaterialDesignIconEnum { .favorite24px }
    static var fileDownload24px: MaterialDesignIconEnum { .getApp24px }
    static var fileDownload48px: MaterialDesignIconEnum { .getApp24px }
    static var fileUpload48px: MaterialDesignIconEnum { .fileUpload24px }
    static var filter124px: MaterialDesignIconEnum { .collections24px }
    static var filter148px: MaterialDesignIconEnum { .collections24px }
    static var filter224px: MaterialDesignIconEnum { .collections24px }
    static var filter248px: MaterialDesignIconEnum { .collections24px }
    static var filter24px: MaterialDesignIconEnum { .collections24px }
    static var filter324px: MaterialDesignIconEnum { .collections24px }
    static var filter348px: MaterialDesignIconEnum { .collections24px }
    static var filter424px: MaterialDesignIconEnum { .collections24px }
    static var filter448px: MaterialDesignIconEnum { .collections24px }
    static var filter48px: MaterialDesignIconEnum { .collections24px }
    static var filter524px: MaterialDesignIconEnum { .collections24px }
    static var filter548px: MaterialDesignIconEnum { .collections24px }
    static var filter624px: MaterialDesignIconEnum { .collections24px }
    static var filter648px: MaterialDesignIconEnum { .collections24px }
    static var filter724px: MaterialDesignIconEnum { .collections24px }
    static var filter748px: MaterialDesignIconEnum { .collections24px }
    static var filter824px: MaterialDesignIconEnum { .collections24px }
    static var filter848px: MaterialDesignIconEnum { .collections24px }
    static var filter924px: MaterialDesignIconEnum { .collections24px }
    static var filter948px: MaterialDesignIconEnum { .collections24px }
    static var filterBAndW48px: MaterialDesignIconEnum { .filterBAndW24px }
    static var filterCenterFocus48px: MaterialDesignIconEnum { .filterCenterFocus24px }
    static var filterDrama48px: MaterialDesignIconEnum { .filterDrama24px }
    static var filterFrames48px: MaterialDesignIconEnum { .filterFrames24px }
    static var filterHdr48px: MaterialDesignIconEnum { .filterHdr24px }
    static var filterList48px: MaterialDesignIconEnum { .filterList24px }
    static var filterNone48px: MaterialDesignIconEnum { .filterNone24px }
    static var filterTiltShift48px: MaterialDesignIconEnum { .filterTiltShift24px }
    static var filterVintage48px: MaterialDesignIconEnum { .filterVintage24px }
    static var findInPage48px: MaterialDesignIconEnum { .findInPage24px }
    static var findReplace48px: MaterialDesignIconEnum { .findReplace24px }
    static var flag48px: MaterialDesignIconEnum { .flag24px }
    static var flare48px: MaterialDesignIconEnum { .flare24px }
    static var flashAuto48px: MaterialDesignIconEnum { .flashAuto24px }
    static var flashOff48px: MaterialDesignIconEnum { .flashOff24px }
    static var flashOn48px: MaterialDesignIconEnum { .flashOn24px }
    static var flight48px: MaterialDesignIconEnum { .flight24px }
    static var flip48px: MaterialDesignIconEnum { .flip24px }
    static var flipToBack48px: MaterialDesignIconEnum { .flipToBack24px }
    static var flipToFront48px: MaterialDesignIconEnum { .flipToFront24px }
    static var folder24px: MaterialDesignIconEnum { .folder18px }
    static var folder48px: MaterialDesignIconEnum { .folder18px }
    static var folderOpen24px: MaterialDesignIconEnum { .folderOpen18px }
    static var folderOpen48px: MaterialDesignIconEnum { .folderOpen18px }
    static var folderShared24px: MaterialDesignIconEnum { .folderShared18px }
    static var folderShared48px: MaterialDesignIconEnum { .folderShared18px }
    static var folderSpecial48px: MaterialDesignIconEnum { .folderSpecial24px }
    static var formatAlignCenter24px: MaterialDesignIconEnum { .formatAlignCenter18px }
    static var formatAlignCenter48px: MaterialDesignIconEnum { .formatAlignCenter18px }
    static var formatAlignJustify24px: MaterialDesignIconEnum { .formatAlignJustify18px }
    static var formatAlignJustify48px: MaterialDesignIconEnum { .formatAlignJustify18px }
    static var formatAlignLeft24px: MaterialDesignIconEnum { .formatAlignLeft18px }
    static var formatAlignLeft48px: MaterialDesignIconEnum { .formatAlignLeft18px }
    static var formatAlignRight24px: MaterialDesignIconEnum { .formatAlignRight18px }
    static var formatAlignRight48px: MaterialDesignIconEnum { .formatAlignRight18px }
    static var formatBold24px: MaterialDesignIconEnum { .formatBold18px }
    static var formatBold48px: MaterialDesignIconEnum { .formatBold18px }
    static var formatClear24px: MaterialDesignIconEnum { .formatClear18px }
    static var formatClear48px: MaterialDesignIconEnum { .formatClear18px }
    static var formatColorFill24px: MaterialDesignIconEnum { .formatColorFill18px }
    static var formatColorFill48px: MaterialDesignIconEnum { .formatColorFill18px }
    static var formatColorReset24px: MaterialDesignIconEnum { .formatColorReset18px }
    static var formatColorReset48px: MaterialDesignIconEnum { .formatColorReset18px }
    static var formatColorText24px: MaterialDesignIconEnum { .formatColorText18px }
    static var formatColorText48px: MaterialDesignIconEnum { .formatColorText18px }
    static var formatIndentDecrease24px: MaterialDesignIconEnum { .formatIndentDecrease18px }
    static var formatIndentDecrease48px: MaterialDesignIconEnum { .formatIndentDecrease18px }
    static var formatIndentIncrease24px: MaterialDesignIconEnum { .formatIndentIncrease18px }
    static var formatIndentIncrease48px: MaterialDesignIconEnum { .formatIndentIncrease18px }
    static var formatItalic24px: MaterialDesignIconEnum { .formatItalic18px }
    static var formatItalic48px: MaterialDesignIconEnum { .formatItalic18px }
    static var formatLineSpacing24px: MaterialDesignIconEnum { .formatLineSpacing18px }
    static var formatLineSpacing48px: MaterialDesignIconEnum { .formatLineSpacing18px }
    static var formatListBulleted24px: MaterialDesignIconEnum { .formatListBulleted18px }
    static var formatListBulleted48px: MaterialDesignIconEnum { .formatListBulleted18px }
    static var formatListNumbered24px: MaterialDesignIconEnum { .formatListNumbered18px }
    static var formatListNumbered48px: MaterialDesignIconEnum { .formatListNumbered18px }
    static var formatPaint24px: MaterialDesignIconEnum { .formatPaint18px }
    static var formatPaint48px: MaterialDesignIconEnum { .formatPaint18px }
    static var formatQuote24px: MaterialDesignIconEnum { .formatQuote18px }
    static var formatQuote48px: MaterialDesignIconEnum { .formatQuote18px }
    static var formatSize24px: MaterialDesignIconEnum { .formatSize18px }
    static var formatSize48px: MaterialDesignIconEnum { .formatSize18px }
    static var formatStrikethrough24px: MaterialDesignIconEnum { .formatStrikethrough18px }
    static var formatStrikethrough48px: MaterialDesignIconEnum { .formatStrikethrough18px }
    static var formatTextdirectionLToR24px: MaterialDesignIconEnum { .formatTextdirectionLToR18px }
    static var formatTextdirectionLToR48px: MaterialDesignIconEnum { .formatTextdirectionLToR18px }
    static var formatTextdirectionRToL24px: MaterialDesignIconEnum { .formatTextdirectionRToL18px }
    static var formatTextdirectionRToL48px: MaterialDesignIconEnum { .formatTextdirectionRToL18px }
    static var forum24px: MaterialDesignIconEnum { .questionAnswer24px }
    static var forum48px: MaterialDesignIconEnum { .questionAnswer24px }
    static var forward48px: MaterialDesignIconEnum { .forward24px }
    static var fullscreen24px: MaterialDesignIconEnum { .fullscreen18px }
    static var fullscreen36px: MaterialDesignIconEnum { .fullscreen18px }
    static var fullscreen48px: MaterialDesignIconEnum { .fullscreen18px }
    static var fullscreenExit24px: MaterialDesignIconEnum { .fullscreenExit18px }
    static var fullscreenExit36px: MaterialDesignIconEnum { .fullscreenExit18px }
    static var fullscreenExit48px: MaterialDesignIconEnum { .fullscreenExit18px }
    static var functions24px: MaterialDesignIconEnum { .functions18px }
    static var functions48px: MaterialDesignIconEnum { .functions18px }
    static var gamepad24px: MaterialDesignIconEnum { .games24px }
    static var gamepad48px: MaterialDesignIconEnum { .games24px }
    static var games48px: MaterialDesignIconEnum { .games24px }
    static var gesture48px: MaterialDesignIconEnum { .gesture24px }
    static var getApp48px: MaterialDesignIconEnum { .getApp24px }
    static var gpsFixed48px: MaterialDesignIconEnum { .gpsFixed24px }
    static var gpsNotFixed48px: MaterialDesignIconEnum { .gpsNotFixed24px }
    static var gpsOff48px: MaterialDesignIconEnum { .gpsOff24px }
    static var grade48px: MaterialDesignIconEnum { .grade24px }
    static var gradient48px: MaterialDesignIconEnum { .gradient24px }
    static var grain48px: MaterialDesignIconEnum { .grain24px }
    static var gridOff48px: MaterialDesignIconEnum { .gridOff24px }
    static var gridOn48px: MaterialDesignIconEnum { .gridOn24px }
    static var group24px: MaterialDesignIconEnum { .group18px }
    static var group48px: MaterialDesignIconEnum { .group18px }
    static var groupAdd24px: MaterialDesignIconEnum { .groupAdd18px }
    static var groupAdd48px: MaterialDesignIconEnum { .groupAdd18px }
    static var groupWork48px: MaterialDesignIconEnum { .groupWork24px }
    static var hdrOff48px: MaterialDesignIconEnum { .hdrOff24px }
    static var hdrOn48px: MaterialDesignIconEnum { .hdrOn24px }
    static var hdrStrong48px: MaterialDesignIconEnum { .hdrStrong24px }
    static var hdrWeak48px: MaterialDesignIconEnum { .hdrWeak24px }
    static var headset48px: MaterialDesignIconEnum { .headset24px }
    static var headsetMic48px: MaterialDesignIconEnum { .headsetMic24px }
    static var healing48px: MaterialDesignIconEnum { .healing24px }
    static var hearing48px: MaterialDesignIconEnum { .hearing24px }
    static var help48px: MaterialDesignIconEnum { .help24px }
    static var highlightRemove48px: MaterialDesignIconEnum { .highlightRemove24px }
    static var highQuality48px: MaterialDesignIconEnum { .highQuality24px }
    static var history48px: MaterialDesignIconEnum { .history24px }
    static var home48px: MaterialDesignIconEnum { .home24px }
    static var hotel48px: MaterialDesignIconEnum { .hotel24px }
    static var https48px: MaterialDesignIconEnum { .https24px }
    static var image24px: MaterialDesignIconEnum { .insertPhoto18px }
    static var image48px: MaterialDesignIconEnum { .insertPhoto18px }
    static var imageAspectRatio48px: MaterialDesignIconEnum { .imageAspectRatio24px }
    static var importExport24px: MaterialDesignIconEnum { .swapVert24px }
    static var importExport48px: MaterialDesignIconEnum { .swapVert24px }
    static var inbox48px: MaterialDesignIconEnum { .inbox24px }
    static var info48px: MaterialDesignIconEnum { .info24px }
    static var infoOutline24px: MaterialDesignIconEnum { .info24px }
    static var infoOutline48px: MaterialDesignIconEnum { .info24px }
    static var input48px: MaterialDesignIconEnum { .input24px }
    static var insertChart18px: MaterialDesignIconEnum { .assessment24px }
    static var insertChart24px: MaterialDesignIconEnum { .assessment24px }
    static var insertChart48px: MaterialDesignIconEnum { .assessment24px }
    static var insertComment18px: MaterialDesignIconEnum { .comment24px }
    static var insertComment24px: MaterialDesignIconEnum { .comment24px }
    static var insertComment48px: MaterialDesignIconEnum { .comment24px }
    static var insertDriveFile24px: MaterialDesignIconEnum { .insertDriveFile18px }
    static var insertDriveFile48px: MaterialDesignIconEnum { .insertDriveFile18px }
    static var insertEmoticon24px: MaterialDesignIconEnum { .insertEmoticon18px }
    static var insertEmoticon48px: MaterialDesignIconEnum { .insertEmoticon18px }
    static var insertInvitation18px: MaterialDesignIconEnum { .event18px }
    static var insertInvitation24px: MaterialDesignIconEnum { .event18px }
    static var insertInvitation48px: MaterialDesignIconEnum { .event18px }
    static var insertLink18px: MaterialDesignIconEnum { .link24px }
    static var insertLink24px: MaterialDesignIconEnum { .link24px }
    static var insertLink48px: MaterialDesignIconEnum { .link24px }
    static var insertPhoto24px: MaterialDesignIconEnum { .insertPhoto18px }
    static var insertPhoto48px: MaterialDesignIconEnum { .insertPhoto18px }
    static var invertColors48px: MaterialDesignIconEnum { .invertColors24px }
    static var invertColorsOff48px: MaterialDesignIconEnum { .invertColorsOff24px }
    static var iso24px: MaterialDesignIconEnum { .exposure24px }
    static var iso48px: MaterialDesignIconEnum { .exposure24px }
    static var keyboard48px: MaterialDesignIconEnum { .keyboard24px }
    static var keyboardAlt48px: MaterialDesignIconEnum { .keyboardAlt24px }
    static var keyboardArrowDown48px: MaterialDesignIconEnum { .keyboardArrowDown24px }
    static var keyboardArrowLeft48px: MaterialDesignIconEnum { .keyboardArrowLeft24px }
    static var keyboardArrowRight48px: MaterialDesignIconEnum { .keyboardArrowRight24px }
    static var keyboardArrowUp48px: MaterialDesignIconEnum { .keyboardArrowUp24px }
    static var keyboardBackspace48px: MaterialDesignIconEnum { .keyboardBackspace24px }
    static var keyboardCapslock48px: MaterialDesignIconEnum { .keyboardCapslock24px }
    static var keyboardHide48px: MaterialDesignIconEnum { .keyboardHide24px }
    static var keyboardReturn48px: MaterialDesignIconEnum { .keyboardReturn24px }
    static var keyboardTab48px: MaterialDesignIconEnum { .keyboardTab24px }
    static var keyboardVoice24px: MaterialDesignIconEnum { .mic24px }
    static var keyboardVoice48px: MaterialDesignIconEnum { .mic24px }
    static var label48px: MaterialDesignIconEnum { .label24px }
    static var labelOutline24px: MaterialDesignIconEnum { .label24px }
    static var labelOutline48px: MaterialDesignIconEnum { .label24px }
    static var landscape48px: MaterialDesignIconEnum { .landscape24px }
    static var language48px: MaterialDesignIconEnum { .language24px }
    static var laptop24px: MaterialDesignIconEnum { .computer24px }
    static var laptop48px: MaterialDesignIconEnum { .computer24px }
    static var laptopChromebook48px: MaterialDesignIconEnum { .laptopChromebook24px }
    static var laptopMac48px: MaterialDesignIconEnum { .laptopMac24px }
    static var laptopWindows48px: MaterialDesignIconEnum { .laptopWindows24px }
    static var launch48px: MaterialDesignIconEnum { .launch24px }
    static var layers48px: MaterialDesignIconEnum { .layers24px }
    static var layersClear48px: MaterialDesignIconEnum { .layersClear24px }
    static var leakAdd48px: MaterialDesignIconEnum { .leakAdd24px }
    static var leakRemove48px: MaterialDesignIconEnum { .leakRemove24px }
    static var lens48px: MaterialDesignIconEnum { .lens24px }
    static var link48px: MaterialDesignIconEnum { .link24px }
    static var list48px: MaterialDesignIconEnum { .list24px }
    static var liveHelp48px: MaterialDesignIconEnum { .liveHelp24px }
    static var localAirport48px: MaterialDesignIconEnum { .localAirport24px }
    static var localAtm48px: MaterialDesignIconEnum { .localAtm24px }
    static var localBar48px: MaterialDesignIconEnum { .localBar24px }
    static var localCafe24px: MaterialDesignIconEnum { .directionsFerry48px }
    static var localCafe48px: MaterialDesignIconEnum { .directionsFerry48px }
    static var localCarWash48px: MaterialDesignIconEnum { .localCarWash24px }
    static var localConvenienceStore48px: MaterialDesignIconEnum { .localConvenienceStore24px }
    static var localDrink48px: MaterialDesignIconEnum { .localDrink24px }
    static var localFlorist48px: MaterialDesignIconEnum { .localFlorist24px }
    static var localGasStation48px: MaterialDesignIconEnum { .localGasStation24px }
    static var localGroceryStore24px: MaterialDesignIconEnum { .shoppingCart24px }
    static var localGroceryStore48px: MaterialDesignIconEnum { .shoppingCart24px }
    static var localHospital48px: MaterialDesignIconEnum { .localHospital24px }
    static var localHotel24px: MaterialDesignIconEnum { .hotel24px }
    static var localHotel48px: MaterialDesignIconEnum { .hotel24px }
    static var localLaundryService48px: MaterialDesignIconEnum { .localLaundryService24px }
    static var localLibrary48px: MaterialDesignIconEnum { .localLibrary24px }
    static var localMall48px: MaterialDesignIconEnum { .localMall24px }
    static var localMovies24px: MaterialDesignIconEnum { .theaters24px }
    static var localMovies48px: MaterialDesignIconEnum { .theaters24px }
    static var localOffer48px: MaterialDesignIconEnum { .localOffer24px }
    static var localParking48px: MaterialDesignIconEnum { .localParking24px }
    static var localPharmacy48px: MaterialDesignIconEnum { .localPharmacy24px }
    static var localPhone24px: MaterialDesignIconEnum { .call24px }
    static var localPhone48px: MaterialDesignIconEnum { .call24px }
    static var localPizza48px: MaterialDesignIconEnum { .localPizza24px }
    static var localPlay48px: MaterialDesignIconEnum { .localPlay24px }
    static var localPostOffice48px: MaterialDesignIconEnum { .localPostOffice24px }
    static var localSee48px: MaterialDesignIconEnum { .localSee24px }
    static var localShipping48px: MaterialDesignIconEnum { .localShipping24px }
    static var localTaxi48px: MaterialDesignIconEnum { .localTaxi24px }
    static var locationCity24px: MaterialDesignIconEnum { .locationCity18px }
    static var locationCity48px: MaterialDesignIconEnum { .locationCity18px }
    static var locationDisabled24px: MaterialDesignIconEnum { .gpsOff24px }
    static var locationDisabled48px: MaterialDesignIconEnum { .gpsOff24px }
    static var locationOff48px: MaterialDesignIconEnum { .locationOff24px }
    static var locationOn24px: MaterialDesignIconEnum { .room24px }
    static var locationOn48px: MaterialDesignIconEnum { .room24px }
    static var locationSearching24px: MaterialDesignIconEnum { .gpsNotFixed24px }
    static var locationSearching48px: MaterialDesignIconEnum { .gpsNotFixed24px }
    static var lock24px: MaterialDesignIconEnum { .https24px }
    static var lock48px: MaterialDesignIconEnum { .https24px }
    static var lockOpen48px: MaterialDesignIconEnum { .lockOpen24px }
    static var lockOutline24px: MaterialDesignIconEnum { .https24px }
    static var lockOutline48px: MaterialDesignIconEnum { .https24px }
    static var looks24px: MaterialDesignIconEnum { .looks324px }
    static var looks348px: MaterialDesignIconEnum { .looks324px }
    static var looks424px: MaterialDesignIconEnum { .looks324px }
    static var looks448px: MaterialDesignIconEnum { .looks324px }
    static var looks48px: MaterialDesignIconEnum { .looks324px }
    static var looks524px: MaterialDesignIconEnum { .looks324px }
    static var looks548px: MaterialDesignIconEnum { .looks324px }
    static var looks624px: MaterialDesignIconEnum { .looks324px }
    static var looks648px: MaterialDesignIconEnum { .looks324px }
    static var looksOne48px: MaterialDesignIconEnum { .looksOne24px }
    static var looksTwo48px: MaterialDesignIconEnum { .looksTwo24px }
    static var loop24px: MaterialDesignIconEnum { .autorenew24px }
    static var loop48px: MaterialDesignIconEnum { .autorenew24px }
    static var loupe48px: MaterialDesignIconEnum { .loupe24px }
    static var loyalty48px: MaterialDesignIconEnum { .loyalty24px }
    static var mail24px: MaterialDesignIconEnum { .email24px }
    static var mail48px: MaterialDesignIconEnum { .email24px }
    static var map48px: MaterialDesignIconEnum { .map24px }
    static var markunread24px: MaterialDesignIconEnum { .email24px }
    static var markunread48px: MaterialDesignIconEnum { .email24px }
    static var markunreadMailbox48px: MaterialDesignIconEnum { .markunreadMailbox24px }
    static var memory48px: MaterialDesignIconEnum { .memory24px }
    static var menu24px: MaterialDesignIconEnum { .menu18px }
    static var menu36px: MaterialDesignIconEnum { .menu18px }
    static var menu48px: MaterialDesignIconEnum { .menu18px }
    static var mergeType24px: MaterialDesignIconEnum { .mergeType18px }
    static var mergeType48px: MaterialDesignIconEnum { .mergeType18px }
    static var message24px: MaterialDesignIconEnum { .chat24px }
    static var message48px: MaterialDesignIconEnum { .chat24px }
    static var mic48px: MaterialDesignIconEnum { .mic24px }
    static var micNone24px: MaterialDesignIconEnum { .mic24px }
    static var micNone48px: MaterialDesignIconEnum { .mic24px }
    static var micOff48px: MaterialDesignIconEnum { .micOff24px }
    static var mms48px: MaterialDesignIconEnum { .mms24px }
    static var modeComment24px: MaterialDesignIconEnum { .modeComment18px }
    static var modeComment48px: MaterialDesignIconEnum { .modeComment18px }
    static var modeEdit18px: MaterialDesignIconEnum { .create24px }
    static var modeEdit24px: MaterialDesignIconEnum { .create24px }
    static var modeEdit48px: MaterialDesignIconEnum { .create24px }
    static var mood18px: MaterialDesignIconEnum { .insertEmoticon18px }
    static var mood24px: MaterialDesignIconEnum { .insertEmoticon18px }
    static var mood48px: MaterialDesignIconEnum { .insertEmoticon18px }
    static var more48px: MaterialDesignIconEnum { .more24px }
    static var moreHoriz24px: MaterialDesignIconEnum { .moreHoriz18px }
    static var moreHoriz36px: MaterialDesignIconEnum { .moreHoriz18px }
    static var moreHoriz48px: MaterialDesignIconEnum { .moreHoriz18px }
    static var moreVert24px: MaterialDesignIconEnum { .moreVert18px }
    static var moreVert36px: MaterialDesignIconEnum { .moreVert18px }
    static var moreVert48px: MaterialDesignIconEnum { .moreVert18px }
    static var mouse48px: MaterialDesignIconEnum { .mouse24px }
    static var movie48px: MaterialDesignIconEnum { .movie24px }
    static var movieCreation24px: MaterialDesignIconEnum { .movie24px }
    static var movieCreation48px: MaterialDesignIconEnum { .movie24px }
    static var multitrackAudio24px: MaterialDesignIconEnum { .permMedia24px }
    static var multitrackAudio48px: MaterialDesignIconEnum { .permPhoneMsg24px }
    static var myLocation24px: MaterialDesignIconEnum { .gpsFixed24px }
    static var myLocation48px: MaterialDesignIconEnum { .gpsFixed24px }
    static var nature48px: MaterialDesignIconEnum { .nature24px }
    static var naturePeople48px: MaterialDesignIconEnum { .naturePeople24px }
    static var navigateBefore48px: MaterialDesignIconEnum { .navigateBefore24px }
    static var navigateNext48px: MaterialDesignIconEnum { .navigateNext24px }
    static var navigation48px: MaterialDesignIconEnum { .navigation24px }
    static var networkCell24px: MaterialDesignIconEnum { .networkCell18px }
    static var networkCell48px: MaterialDesignIconEnum { .networkCell18px }
    static var networkLocked48px: MaterialDesignIconEnum { .networkLocked24px }
    static var networkWifi24px: MaterialDesignIconEnum { .networkWifi18px }
    static var networkWifi48px: MaterialDesignIconEnum { .networkWifi18px }
    static var newReleases48px: MaterialDesignIconEnum { .newReleases24px }
    static var nfc48px: MaterialDesignIconEnum { .nfc24px }
    static var noSim48px: MaterialDesignIconEnum { .noSim24px }
    static var noteAdd48px: MaterialDesignIconEnum { .noteAdd24px }
    static var notifications48px: MaterialDesignIconEnum { .notifications24px }
    static var notificationsNone24px: MaterialDesignIconEnum { .notifications24px }
    static var notificationsNone48px: MaterialDesignIconEnum { .notifications24px }
    static var notificationsOff48px: MaterialDesignIconEnum { .notificationsOff24px }
    static var notificationsPaused48px: MaterialDesignIconEnum { .notificationsPaused24px }
    static var notInterested48px: MaterialDesignIconEnum { .notInterested24px }
    static var nowWallpaper48px: MaterialDesignIconEnum { .history24px }
    static var nowWidgets48px: MaterialDesignIconEnum { .search24px }
    static var openInBrowser48px: MaterialDesignIconEnum { .openInBrowser24px }
    static var openInNew24px: MaterialDesignIconEnum { .launch24px }
    static var openInNew48px: MaterialDesignIconEnum { .launch24px }
    static var openWith48px: MaterialDesignIconEnum { .openWith24px }
    static var pages24px: MaterialDesignIconEnum { .pages18px }
    static var pages48px: MaterialDesignIconEnum { .pages18px }
    static var pageview48px: MaterialDesignIconEnum { .pageview24px }
    static var palette24px: MaterialDesignIconEnum { .colorLens24px }
    static var palette48px: MaterialDesignIconEnum { .colorLens24px }
    static var panorama48px: MaterialDesignIconEnum { .panorama24px }
    static var panoramaHorizontal48px: MaterialDesignIconEnum { .panoramaHorizontal24px }
    static var panoramaVertical48px: MaterialDesignIconEnum { .panoramaVertical24px }
    static var panoramaWideAngle48px: MaterialDesignIconEnum { .panoramaWideAngle24px }
    static var partyMode48px: MaterialDesignIconEnum { .partyMode24px }
    static var pause48px: MaterialDesignIconEnum { .pause24px }
    static var pauseCircleOutline48px: MaterialDesignIconEnum { .pauseCircleOutline24px }
    static var payment24px: MaterialDesignIconEnum { .creditCard24px }
    static var payment48px: MaterialDesignIconEnum { .creditCard24px }
    static var people18px: MaterialDesignIconEnum { .group18px }
    static var people24px: MaterialDesignIconEnum { .group18px }
    static var people48px: MaterialDesignIconEnum { .group18px }
    static var peopleOutline24px: MaterialDesignIconEnum { .group18px }
    static var peopleOutline48px: MaterialDesignIconEnum { .group18px }
    static var permCameraMic48px: MaterialDesignIconEnum { .permCameraMic24px }
    static var permContactCal48px: MaterialDesignIconEnum { .permContactCal24px }
    static var permDataSetting48px: MaterialDesignIconEnum { .permDataSetting24px }
    static var permDeviceInfo48px: MaterialDesignIconEnum { .permDeviceInfo24px }
    static var permIdentity48px: MaterialDesignIconEnum { .permIdentity24px }
    static var permMedia48px: MaterialDesignIconEnum { .permMedia24px }
    static var permPhoneMsg48px: MaterialDesignIconEnum { .permPhoneMsg24px }
    static var permScanWifi48px: MaterialDesignIconEnum { .permScanWifi24px }
    static var person18px: MaterialDesignIconEnum { .permIdentity24px }
    static var person24px: MaterialDesignIconEnum { .permIdentity24px }
    static var person48px: MaterialDesignIconEnum { .permIdentity24px }
    static var personAdd24px: MaterialDesignIconEnum { .personAdd18px }
    static var personAdd48px: MaterialDesignIconEnum { .personAdd18px }
    static var personOutline18px: MaterialDesignIconEnum { .permIdentity24px }
    static var personOutline24px: MaterialDesignIconEnum { .permIdentity24px }
    static var personOutline48px: MaterialDesignIconEnum { .permIdentity24px }
    static var phone24px: MaterialDesignIconEnum { .call24px }
    static var phone48px: MaterialDesignIconEnum { .call24px }
    static var phoneAndroid48px: MaterialDesignIconEnum { .phoneAndroid24px }
    static var phoneBluetoothSpeaker48px: MaterialDesignIconEnum { .phoneBluetoothSpeaker24px }
    static var phoneForwarded48px: MaterialDesignIconEnum { .phoneForwarded24px }
    static var phoneInTalk48px: MaterialDesignIconEnum { .phoneInTalk24px }
    static var phoneIphone48px: MaterialDesignIconEnum { .phoneIphone24px }
    static var phonelink24px: MaterialDesignIconEnum { .devices24px }
    static var phonelink48px: MaterialDesignIconEnum { .devices24px }
    static var phonelinkOff48px: MaterialDesignIconEnum { .phonelinkOff24px }
    static var phoneLocked48px: MaterialDesignIconEnum { .phoneLocked24px }
    static var phoneMissed48px: MaterialDesignIconEnum { .phoneMissed24px }
    static var phonePaused48px: MaterialDesignIconEnum { .phonePaused24px }
    static var photo48px: MaterialDesignIconEnum { .photo24px }
    static var photoAlbum48px: MaterialDesignIconEnum { .photoAlbum24px }
    static var photoCamera24px: MaterialDesignIconEnum { .cameraAlt24px }
    static var photoCamera48px: MaterialDesignIconEnum { .cameraAlt24px }
    static var photoLibrary48px: MaterialDesignIconEnum { .photoLibrary24px }
    static var pictureInPicture48px: MaterialDesignIconEnum { .pictureInPicture24px }
    static var pinDrop48px: MaterialDesignIconEnum { .pinDrop24px }
    static var place24px: MaterialDesignIconEnum { .room24px }
    static var place48px: MaterialDesignIconEnum { .room24px }
    static var playArrow48px: MaterialDesignIconEnum { .playArrow24px }
    static var playlistAdd48px: MaterialDesignIconEnum { .playlistAdd24px }
    static var plusOne48px: MaterialDesignIconEnum { .plusOne24px }
    static var poll18px: MaterialDesignIconEnum { .assessment24px }
    static var poll24px: MaterialDesignIconEnum { .assessment24px }
    static var poll48px: MaterialDesignIconEnum { .assessment24px }
    static var polymer48px: MaterialDesignIconEnum { .polymer24px }
    static var portableWifiOff48px: MaterialDesignIconEnum { .portableWifiOff24px }
    static var portrait24px: MaterialDesignIconEnum { .accountBox18px }
    static var portrait48px: MaterialDesignIconEnum { .accountBox18px }
    static var print48px: MaterialDesignIconEnum { .print24px }
    static var public48px: MaterialDesignIconEnum { .public24px }
    static var publish24px: MaterialDesignIconEnum { .publish18px }
    static var publish48px: MaterialDesignIconEnum { .publish18px }
    static var queryBuilder48px: MaterialDesignIconEnum { .queryBuilder24px }
    static var questionAnswer48px: MaterialDesignIconEnum { .questionAnswer24px }
    static var queue48px: MaterialDesignIconEnum { .queue24px }
    static var queueMusic48px: MaterialDesignIconEnum { .queueMusic24px }
    static var quickContactsMail24px: MaterialDesignIconEnum { .business24px }
    static var radio48px: MaterialDesignIconEnum { .radio24px }
    static var rateReview48px: MaterialDesignIconEnum { .rateReview24px }
    static var receipt48px: MaterialDesignIconEnum { .receipt24px }
    static var recentActors48px: MaterialDesignIconEnum { .recentActors24px }
    static var redeem48px: MaterialDesignIconEnum { .redeem24px }
    static var redo48px: MaterialDesignIconEnum { .redo24px }
    static var refresh24px: MaterialDesignIconEnum { .refresh18px }
    static var refresh36px: MaterialDesignIconEnum { .refresh18px }
    static var refresh48px: MaterialDesignIconEnum { .refresh18px }
    static var remove48px: MaterialDesignIconEnum { .remove24px }
    static var removeCircle48px: MaterialDesignIconEnum { .removeCircle24px }
    static var removeCircleOutline24px: MaterialDesignIconEnum { .removeCircle24px }
    static var removeCircleOutline48px: MaterialDesignIconEnum { .removeCircle24px }
    static var removeRedEye24px: MaterialDesignIconEnum { .visibility24px }
    static var removeRedEye48px: MaterialDesignIconEnum { .visibility24px }
    static var repeat48px: MaterialDesignIconEnum { .repeat24px }
    static var repeatOne48px: MaterialDesignIconEnum { .repeatOne24px }
    static var replay48px: MaterialDesignIconEnum { .replay24px }
    static var reply48px: MaterialDesignIconEnum { .reply24px }
    static var replyAll48px: MaterialDesignIconEnum { .replyAll24px }
    static var report48px: MaterialDesignIconEnum { .report24px }
    static var reportProblem48px: MaterialDesignIconEnum { .reportProblem24px }
    static var restaurantMenu48px: MaterialDesignIconEnum { .restaurantMenu24px }
    static var restore24px: MaterialDesignIconEnum { .history24px }
    static var restore48px: MaterialDesignIconEnum { .history24px }
    static var ringVolume48px: MaterialDesignIconEnum { .ringVolume24px }
    static var room48px: MaterialDesignIconEnum { .room24px }
    static var rotateLeft48px: MaterialDesignIconEnum { .rotateLeft24px }
    static var rotateRight48px: MaterialDesignIconEnum { .rotateRight24px }
    static var satellite48px: MaterialDesignIconEnum { .satellite24px }
    static var save48px: MaterialDesignIconEnum { .save24px }
    static var schedule24px: MaterialDesignIconEnum { .queryBuilder24px }
    static var schedule48px: MaterialDesignIconEnum { .queryBuilder24px }
    static var school48px: MaterialDesignIconEnum { .school24px }
    static var screenLockLandscape48px: MaterialDesignIconEnum { .screenLockLandscape24px }
    static var screenLockPortrait48px: MaterialDesignIconEnum { .screenLockPortrait24px }
    static var screenLockRotation48px: MaterialDesignIconEnum { .screenLockRotation24px }
    static var screenRotation48px: MaterialDesignIconEnum { .screenRotation24px }
    static var sdCard24px: MaterialDesignIconEnum { .sdStorage24px }
    static var sdCard48px: MaterialDesignIconEnum { .sdStorage24px }
    static var sdStorage48px: MaterialDesignIconEnum { .sdStorage24px }
    static var search48px: MaterialDesignIconEnum { .search24px }
    static var security48px: MaterialDesignIconEnum { .security24px }
    static var selectAll48px: MaterialDesignIconEnum { .selectAll24px }
    static var send48px: MaterialDesignIconEnum { .send24px }
    static var settings48px: MaterialDesignIconEnum { .settings24px }
    static var settingsApplications48px: MaterialDesignIconEnum { .settingsApplications24px }
    static var settingsBackupRestore48px: MaterialDesignIconEnum { .settingsBackupRestore24px }
    static var settingsBluetooth48px: MaterialDesignIconEnum { .settingsBluetooth24px }
    static var settingsCell48px: MaterialDesignIconEnum { .settingsCell24px }
    static var settingsDisplay48px: MaterialDesignIconEnum { .settingsDisplay24px }
    static var settingsEthernet48px: MaterialDesignIconEnum { .settingsEthernet24px }
    static var settingsInputAntenna48px: MaterialDesignIconEnum { .settingsInputAntenna24px }
    static var settingsInputComponent48px: MaterialDesignIconEnum { .settingsInputComponent24px }
    static var settingsInputComposite24px: MaterialDesignIconEnum { .settingsInputComponent24px }
    static var settingsInputComposite48px: MaterialDesignIconEnum { .settingsInputComponent24px }
    static var settingsInputHdmi48px: MaterialDesignIconEnum { .settingsInputHdmi24px }
    static var settingsInputSvideo48px: MaterialDesignIconEnum { .settingsInputSvideo24px }
    static var settingsOverscan48px: MaterialDesignIconEnum { .settingsOverscan24px }
    static var settingsPhone48px: MaterialDesignIconEnum { .settingsPhone24px }
    static var settingsPower48px: MaterialDesignIconEnum { .settingsPower24px }
    static var settingsRemote48px: MaterialDesignIconEnum { .settingsRemote24px }
    static var settingsSystemDaydream48px: MaterialDesignIconEnum { .settingsSystemDaydream24px }
    static var settingsVoice48px: MaterialDesignIconEnum { .settingsVoice24px }
    static var share48px: MaterialDesignIconEnum { .share24px }
    static var shop48px: MaterialDesignIconEnum { .shop24px }
    static var shoppingBasket48px: MaterialDesignIconEnum { .shoppingBasket24px }
    static var shoppingCart48px: MaterialDesignIconEnum { .shoppingCart24px }
    static var shopTwo48px: MaterialDesignIconEnum { .shopTwo24px }
    static var shuffle48px: MaterialDesignIconEnum { .shuffle24px }
    static var signalCellular0Bar18px: MaterialDesignIconEnum { .settingsInputSvideo24px }
    static var signalCellular0Bar24px: MaterialDesignIconEnum { .settingsOverscan24px }
    static var signalCellular0Bar48px: MaterialDesignIconEnum { .settingsPhone24px }
    static var signalCellular1Bar18px: MaterialDesignIconEnum { .settingsPower24px }
    static var signalCellular1Bar24px: MaterialDesignIconEnum { .settingsRemote24px }
    static var signalCellular1Bar48px: MaterialDesignIconEnum { .settingsVoice24px }
    static var signalCellular2Bar18px: MaterialDesignIconEnum { .shop24px }
    static var signalCellular2Bar24px: MaterialDesignIconEnum { .shopTwo24px }
    static var signalCellular2Bar48px: MaterialDesignIconEnum { .shoppingBasket24px }
    static var signalCellular3Bar18px: MaterialDesignIconEnum { .shoppingCart24px }
    static var signalCellular3Bar24px: MaterialDesignIconEnum { .speakerNotes24px }
    static var signalCellular3Bar48px: MaterialDesignIconEnum { .spellcheck24px }
    static var signalCellular4Bar24px: MaterialDesignIconEnum { .stars24px }
    static var signalCellular4Bar48px: MaterialDesignIconEnum { .store24px }
    static var signalCellularConnectedNoInternet0Bar18px: MaterialDesignIconEnum { .subject24px }
    static var signalCellularConnectedNoInternet0Bar24px: MaterialDesignIconEnum { .supervisorAccount24px }
    static var signalCellularConnectedNoInternet0Bar48px: MaterialDesignIconEnum { .swapHoriz24px }
    static var signalCellularConnectedNoInternet1Bar18px: MaterialDesignIconEnum { .swapVert24px }
    static var signalCellularConnectedNoInternet1Bar24px: MaterialDesignIconEnum { .swapVertCircle24px }
    static var signalCellularConnectedNoInternet1Bar48px: MaterialDesignIconEnum { .systemUpdateTv24px }
    static var signalCellularConnectedNoInternet2Bar18px: MaterialDesignIconEnum { .tab24px }
    static var signalCellularConnectedNoInternet2Bar24px: MaterialDesignIconEnum { .tabUnselected24px }
    static var signalCellularConnectedNoInternet2Bar48px: MaterialDesignIconEnum { .theaters24px }
    static var signalCellularConnectedNoInternet3Bar48px: MaterialDesignIconEnum { .thumbsUpDown24px }
    static var signalCellularConnectedNoInternet4Bar18px: MaterialDesignIconEnum { .toc24px }
    static var signalCellularConnectedNoInternet4Bar24px: MaterialDesignIconEnum { .today24px }
    static var signalCellularNoSim24px: MaterialDesignIconEnum { .noSim24px }
    static var signalCellularNoSim48px: MaterialDesignIconEnum { .noSim24px }
    static var signalCellularNull24px: MaterialDesignIconEnum { .signalCellularNull18px }
    static var signalCellularNull48px: MaterialDesignIconEnum { .signalCellularNull18px }
    static var signalCellularOff24px: MaterialDesignIconEnum { .signalCellularOff18px }
    static var signalCellularOff48px: MaterialDesignIconEnum { .signalCellularOff18px }
    static var signalWifi0Bar18px: MaterialDesignIconEnum { .viewAgenda24px }
    static var signalWifi0Bar24px: MaterialDesignIconEnum { .viewArray24px }
    static var signalWifi0Bar48px: MaterialDesignIconEnum { .viewCarousel24px }
    static var signalWifi1Bar18px: MaterialDesignIconEnum { .viewColumn24px }
    static var signalWifi1Bar24px: MaterialDesignIconEnum { .viewDay24px }
    static var signalWifi1Bar48px: MaterialDesignIconEnum { .viewHeadline24px }
    static var signalWifi2Bar18px: MaterialDesignIconEnum { .viewList24px }
    static var signalWifi2Bar24px: MaterialDesignIconEnum { .viewModule24px }
    static var signalWifi2Bar48px: MaterialDesignIconEnum { .viewQuilt24px }
    static var signalWifi3Bar18px: MaterialDesignIconEnum { .viewStream24px }
    static var signalWifi3Bar24px: MaterialDesignIconEnum { .viewWeek24px }
    static var signalWifi3Bar48px: MaterialDesignIconEnum { .visibility24px }
    static var signalWifi4Bar18px: MaterialDesignIconEnum { .visibilityOff24px }
    static var signalWifi4Bar24px: MaterialDesignIconEnum { .redeem24px }
    static var signalWifiOff24px: MaterialDesignIconEnum { .signalWifiOff18px }
    static var signalWifiOff48px: MaterialDesignIconEnum { .signalWifiOff18px }
    static var signalWifiStatusbar3Bar26x24px: MaterialDesignIconEnum { .help24px }
    static var signalWifiStatusbar4Bar26x24px: MaterialDesignIconEnum { .reorder24px }
    static var simCard48px: MaterialDesignIconEnum { .simCard24px }
    static var simCardAlert48px: MaterialDesignIconEnum { .simCardAlert24px }
    static var skipNext48px: MaterialDesignIconEnum { .skipNext24px }
    static var skipPrevious48px: MaterialDesignIconEnum { .skipPrevious24px }
    static var slideshow48px: MaterialDesignIconEnum { .slideshow24px }
    static var smartphone24px: MaterialDesignIconEnum { .stayCurrentPortrait24px }
    static var smartphone48px: MaterialDesignIconEnum { .stayCurrentPortrait24px }
    static var sms24px: MaterialDesignIconEnum { .textsms24px }
    static var sms48px: MaterialDesignIconEnum { .textsms24px }
    static var smsFailed24px: MaterialDesignIconEnum { .announcement24px }
    static var smsFailed48px: MaterialDesignIconEnum { .announcement24px }
    static var snooze48px: MaterialDesignIconEnum { .snooze24px }
    static var sort48px: MaterialDesignIconEnum { .sort24px }
    static var speaker48px: MaterialDesignIconEnum { .speaker24px }
    static var speakerNotes48px: MaterialDesignIconEnum { .speakerNotes24px }
    static var spellcheck48px: MaterialDesignIconEnum { .spellcheck24px }
    static var star24px: MaterialDesignIconEnum { .grade24px }
    static var starOutline24px: MaterialDesignIconEnum { .grade24px }
    static var starRate48px: MaterialDesignIconEnum { .starRate24px }
    static var stars48px: MaterialDesignIconEnum { .stars24px }
    static var stayCurrentLandscape48px: MaterialDesignIconEnum { .stayCurrentLandscape24px }
    static var stayCurrentPortrait48px: MaterialDesignIconEnum { .stayCurrentPortrait24px }
    static var stayPrimaryLandscape24px: MaterialDesignIconEnum { .stayCurrentLandscape24px }
    static var stayPrimaryLandscape48px: MaterialDesignIconEnum { .stayCurrentLandscape24px }
    static var stayPrimaryPortrait48px: MaterialDesignIconEnum { .stayPrimaryPortrait24px }
    static var stop48px: MaterialDesignIconEnum { .stop24px }
    static var storage48px: MaterialDesignIconEnum { .storage24px }
    static var store48px: MaterialDesignIconEnum { .store24px }
    static var storeMallDirectory24px: MaterialDesignIconEnum { .store24px }
    static var storeMallDirectory48px: MaterialDesignIconEnum { .store24px }
    static var straighten48px: MaterialDesignIconEnum { .straighten24px }
    static var style48px: MaterialDesignIconEnum { .style24px }
    static var subject48px: MaterialDesignIconEnum { .subject24px }
    static var subtitles48px: MaterialDesignIconEnum { .subtitles24px }
    static var surroundSound48px: MaterialDesignIconEnum { .surroundSound24px }
    static var swapCalls48px: MaterialDesignIconEnum { .swapCalls24px }
    static var swapHoriz48px: MaterialDesignIconEnum { .swapHoriz24px }
    static var swapVert48px: MaterialDesignIconEnum { .swapVert24px }
    static var swapVertCircle48px: MaterialDesignIconEnum { .swapVertCircle24px }
    static var switchCamera48px: MaterialDesignIconEnum { .switchCamera24px }
    static var switchVideo48px: MaterialDesignIconEnum { .switchVideo24px }
    static var sync48px: MaterialDesignIconEnum { .sync24px }
    static var syncDisabled48px: MaterialDesignIconEnum { .syncDisabled24px }
    static var syncProblem48px: MaterialDesignIconEnum { .syncProblem24px }
    static var systemUpdate48px: MaterialDesignIconEnum { .systemUpdate24px }
    static var systemUpdateTv48px: MaterialDesignIconEnum { .systemUpdateTv24px }
    static var tab48px: MaterialDesignIconEnum { .tab24px }
    static var tablet48px: MaterialDesignIconEnum { .tablet24px }
    static var tabletAndroid48px: MaterialDesignIconEnum { .tabletAndroid24px }
    static var tabletMac48px: MaterialDesignIconEnum { .tabletMac24px }
    static var tabUnselected48px: MaterialDesignIconEnum { .tabUnselected24px }
    static var tagFaces24px: MaterialDesignIconEnum { .insertEmoticon18px }
    static var tagFaces48px: MaterialDesignIconEnum { .insertEmoticon18px }
    static var tapAndPlay48px: MaterialDesignIconEnum { .tapAndPlay24px }
    static var terrain24px: MaterialDesignIconEnum { .landscape24px }
    static var terrain48px: MaterialDesignIconEnum { .landscape24px }
    static var textFormat48px: MaterialDesignIconEnum { .textFormat24px }
    static var textsms48px: MaterialDesignIconEnum { .textsms24px }
    static var texture48px: MaterialDesignIconEnum { .texture24px }
    static var theaters48px: MaterialDesignIconEnum { .theaters24px }
    static var threeDRotation48px: MaterialDesignIconEnum { .threeDRotation24px }
    static var thumbDown48px: MaterialDesignIconEnum { .thumbDown24px }
    static var thumbsUpDown48px: MaterialDesignIconEnum { .thumbsUpDown24px }
    static var thumbUp48px: MaterialDesignIconEnum { .thumbUp24px }
    static var timelapse48px: MaterialDesignIconEnum { .timelapse24px }
    static var timer1024px: MaterialDesignIconEnum { .timer324px }
    static var timer1048px: MaterialDesignIconEnum { .timer324px }
    static var timer24px: MaterialDesignIconEnum { .timer324px }
    static var timer348px: MaterialDesignIconEnum { .timer324px }
    static var timer48px: MaterialDesignIconEnum { .timer324px }
    static var timerOff48px: MaterialDesignIconEnum { .timerOff24px }
    static var timeToLeave24px: MaterialDesignIconEnum { .directionsCar24px }
    static var timeToLeave48px: MaterialDesignIconEnum { .directionsCar24px }
    static var toc48px: MaterialDesignIconEnum { .toc24px }
    static var today48px: MaterialDesignIconEnum { .today24px }
    static var tonality48px: MaterialDesignIconEnum { .tonality24px }
    static var trackChanges48px: MaterialDesignIconEnum { .trackChanges24px }
    static var traffic48px: MaterialDesignIconEnum { .traffic24px }
    static var transform48px: MaterialDesignIconEnum { .transform24px }
    static var translate48px: MaterialDesignIconEnum { .translate24px }
    static var trendingDown48px: MaterialDesignIconEnum { .trendingDown24px }
    static var trendingNeutral48px: MaterialDesignIconEnum { .trendingNeutral24px }
    static var trendingUp48px: MaterialDesignIconEnum { .trendingUp24px }
    static var tune48px: MaterialDesignIconEnum { .tune24px }
    static var turnedIn24px: MaterialDesignIconEnum { .bookmark24px }
    static var turnedIn48px: MaterialDesignIconEnum { .bookmark24px }
    static var turnedInNot24px: MaterialDesignIconEnum { .bookmark24px }
    static var turnedInNot48px: MaterialDesignIconEnum { .bookmark24px }
    static var tv48px: MaterialDesignIconEnum { .tv24px }
    static var undo48px: MaterialDesignIconEnum { .undo24px }
    static var unfoldLess24px: MaterialDesignIconEnum { .unfoldLess18px }
    static var unfoldLess36px: MaterialDesignIconEnum { .unfoldLess18px }
    static var unfoldLess48px: MaterialDesignIconEnum { .unfoldLess18px }
    static var unfoldMore24px: MaterialDesignIconEnum { .unfoldMore18px }
    static var unfoldMore36px: MaterialDesignIconEnum { .unfoldMore18px }
    static var unfoldMore48px: MaterialDesignIconEnum { .unfoldMore18px }
    static var usb24px: MaterialDesignIconEnum { .usb18px }
    static var usb48px: MaterialDesignIconEnum { .usb18px }
    static var verifiedUser48px: MaterialDesignIconEnum { .verifiedUser24px }
    static var verticalAlignBottom24px: MaterialDesignIconEnum { .verticalAlignBottom18px }
    static var verticalAlignBottom48px: MaterialDesignIconEnum { .verticalAlignBottom18px }
    static var verticalAlignCenter24px: MaterialDesignIconEnum { .verticalAlignCenter18px }
    static var verticalAlignCenter48px: MaterialDesignIconEnum { .verticalAlignCenter18px }
    static var verticalAlignTop24px: MaterialDesignIconEnum { .verticalAlignTop18px }
    static var verticalAlignTop48px: MaterialDesignIconEnum { .verticalAlignTop18px }
    static var vibration24px: MaterialDesignIconEnum { .vibration18px }
    static var vibration48px: MaterialDesignIconEnum { .vibration18px }
    static var videocam48px: MaterialDesignIconEnum { .videocam24px }
    static var videocamOff48px: MaterialDesignIconEnum { .videocamOff24px }
    static var viewAgenda48px: MaterialDesignIconEnum { .viewAgenda24px }
    static var viewArray48px: MaterialDesignIconEnum { .viewArray24px }
    static var viewCarousel48px: MaterialDesignIconEnum { .viewCarousel24px }
    static var viewColumn48px: MaterialDesignIconEnum { .viewColumn24px }
    static var viewDay48px: MaterialDesignIconEnum { .viewDay24px }
    static var viewHeadline48px: MaterialDesignIconEnum { .viewHeadline24px }
    static var viewList48px: MaterialDesignIconEnum { .viewList24px }
    static var viewModule48px: MaterialDesignIconEnum { .viewModule24px }
    static var viewQuilt48px: MaterialDesignIconEnum { .viewQuilt24px }
    static var viewStream48px: MaterialDesignIconEnum { .viewStream24px }
    static var viewWeek48px: MaterialDesignIconEnum { .viewWeek24px }
    static var visibility48px: MaterialDesignIconEnum { .visibility24px }
    static var visibilityOff48px: MaterialDesignIconEnum { .visibilityOff24px }
    static var voiceChat48px: MaterialDesignIconEnum { .voiceChat24px }
    static var voicemail48px: MaterialDesignIconEnum { .voicemail24px }
    static var volumeDown24px: MaterialDesignIconEnum { .volumeDown18px }
    static var volumeDown48px: MaterialDesignIconEnum { .volumeDown18px }
    static var volumeMute24px: MaterialDesignIconEnum { .volumeMute18px }
    static var volumeMute48px: MaterialDesignIconEnum { .volumeMute18px }
    static var volumeOff48px: MaterialDesignIconEnum { .volumeOff24px }
    static var volumeUp24px: MaterialDesignIconEnum { .volumeUp18px }
    static var volumeUp48px: MaterialDesignIconEnum { .volumeUp18px }
    static var vpnKey48px: MaterialDesignIconEnum { .vpnKey24px }
    static var vpnLock48px: MaterialDesignIconEnum { .vpnLock24px }
    static var warning18px: MaterialDesignIconEnum { .reportProblem24px }
    static var warning24px: MaterialDesignIconEnum { .reportProblem24px }
    static var warning36px: MaterialDesignIconEnum { .reportProblem24px }
    static var warning48px: MaterialDesignIconEnum { .reportProblem24px }
    static var watch48px: MaterialDesignIconEnum { .watch24px }
    static var wbAuto48px: MaterialDesignIconEnum { .wbAuto24px }
    static var wbCloudy24px: MaterialDesignIconEnum { .cloud24px }
    static var wbCloudy48px: MaterialDesignIconEnum { .cloud24px }
    static var wbIncandescent48px: MaterialDesignIconEnum { .wbIncandescent24px }
    static var wbSunny48px: MaterialDesignIconEnum { .wbSunny24px }
    static var web48px: MaterialDesignIconEnum { .web24px }
    static var whatshot24px: MaterialDesignIconEnum { .whatshot18px }
    static var whatshot48px: MaterialDesignIconEnum { .whatshot18px }
    static var wifiLock48px: MaterialDesignIconEnum { .wifiLock24px }
    static var wifiTethering48px: MaterialDesignIconEnum { .wifiTethering24px }
    static var work48px: MaterialDesignIconEnum { .work24px }
    static var wrapText24px: MaterialDesignIconEnum { .wrapText18px }
    static var wrapText48px: MaterialDesignIconEnum { .wrapText18px }
}
#endif
