; ModuleID = 'marshal_methods.arm64-v8a.ll'
source_filename = "marshal_methods.arm64-v8a.ll"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-android21"

%struct.MarshalMethodName = type {
	i64, ; uint64_t id
	ptr ; char* name
}

%struct.MarshalMethodsManagedClass = type {
	i32, ; uint32_t token
	ptr ; MonoClass klass
}

@assembly_image_cache = dso_local local_unnamed_addr global [347 x ptr] zeroinitializer, align 8

; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = dso_local local_unnamed_addr constant [694 x i64] [
	i64 24362543149721218, ; 0: Xamarin.AndroidX.DynamicAnimation => 0x568d9a9a43a682 => 243
	i64 98382396393917666, ; 1: Microsoft.Extensions.Primitives.dll => 0x15d8644ad360ce2 => 188
	i64 120698629574877762, ; 2: Mono.Android => 0x1accec39cafe242 => 171
	i64 131669012237370309, ; 3: Microsoft.Maui.Essentials.dll => 0x1d3c844de55c3c5 => 201
	i64 196720943101637631, ; 4: System.Linq.Expressions.dll => 0x2bae4a7cd73f3ff => 58
	i64 210515253464952879, ; 5: Xamarin.AndroidX.Collection.dll => 0x2ebe681f694702f => 230
	i64 229794953483747371, ; 6: System.ValueTuple.dll => 0x330654aed93802b => 151
	i64 232391251801502327, ; 7: Xamarin.AndroidX.SavedState.dll => 0x3399e9cbc897277 => 271
	i64 295915112840604065, ; 8: Xamarin.AndroidX.SlidingPaneLayout => 0x41b4d3a3088a9a1 => 274
	i64 316157742385208084, ; 9: Xamarin.AndroidX.Core.Core.Ktx.dll => 0x46337caa7dc1b14 => 237
	i64 350667413455104241, ; 10: System.ServiceProcess.dll => 0x4ddd227954be8f1 => 132
	i64 422779754995088667, ; 11: System.IO.UnmanagedMemoryStream => 0x5de03f27ab57d1b => 56
	i64 435118502366263740, ; 12: Xamarin.AndroidX.Security.SecurityCrypto.dll => 0x609d9f8f8bdb9bc => 273
	i64 560278790331054453, ; 13: System.Reflection.Primitives => 0x7c6829760de3975 => 95
	i64 634308326490598313, ; 14: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x8cd840fee8b6ba9 => 256
	i64 649145001856603771, ; 15: System.Security.SecureString => 0x90239f09b62167b => 129
	i64 670564002081277297, ; 16: Microsoft.Identity.Client.dll => 0x94e526837380571 => 189
	i64 750875890346172408, ; 17: System.Threading.Thread => 0xa6ba5a4da7d1ff8 => 145
	i64 798450721097591769, ; 18: Xamarin.AndroidX.Collection.Ktx.dll => 0xb14aab351ad2bd9 => 231
	i64 799765834175365804, ; 19: System.ComponentModel.dll => 0xb1956c9f18442ac => 18
	i64 805302231655005164, ; 20: hu\Microsoft.Maui.Controls.resources.dll => 0xb2d021ceea03bec => 324
	i64 872800313462103108, ; 21: Xamarin.AndroidX.DrawerLayout => 0xc1ccf42c3c21c44 => 242
	i64 895210737996778430, ; 22: Xamarin.AndroidX.Lifecycle.Runtime.Ktx.dll => 0xc6c6d6c5569cbbe => 257
	i64 937459790420187032, ; 23: Microsoft.SqlServer.Server.dll => 0xd0286b667351798 => 203
	i64 940822596282819491, ; 24: System.Transactions => 0xd0e792aa81923a3 => 150
	i64 960778385402502048, ; 25: System.Runtime.Handles.dll => 0xd555ed9e1ca1ba0 => 104
	i64 1010599046655515943, ; 26: System.Reflection.Primitives.dll => 0xe065e7a82401d27 => 95
	i64 1060858978308751610, ; 27: Azure.Core.dll => 0xeb8ed9ebee080fa => 173
	i64 1074671384365904080, ; 28: itextsharp.dll => 0xee9ffee236830d0 => 177
	i64 1120440138749646132, ; 29: Xamarin.Google.Android.Material.dll => 0xf8c9a5eae431534 => 286
	i64 1150430735170971895, ; 30: ru\Microsoft.Data.SqlClient.resources => 0xff726a88c8ea8f7 => 309
	i64 1268860745194512059, ; 31: System.Drawing.dll => 0x119be62002c19ebb => 36
	i64 1301626418029409250, ; 32: System.Diagnostics.FileVersionInfo => 0x12104e54b4e833e2 => 28
	i64 1315114680217950157, ; 33: Xamarin.AndroidX.Arch.Core.Common.dll => 0x124039d5794ad7cd => 222
	i64 1369545283391376210, ; 34: Xamarin.AndroidX.Navigation.Fragment.dll => 0x13019a2dd85acb52 => 264
	i64 1404195534211153682, ; 35: System.IO.FileSystem.Watcher.dll => 0x137cb4660bd87f12 => 50
	i64 1425944114962822056, ; 36: System.Runtime.Serialization.dll => 0x13c9f89e19eaf3a8 => 115
	i64 1476839205573959279, ; 37: System.Net.Primitives.dll => 0x147ec96ece9b1e6f => 70
	i64 1486715745332614827, ; 38: Microsoft.Maui.Controls.dll => 0x14a1e017ea87d6ab => 198
	i64 1491290866305144020, ; 39: Xamarin.Google.AutoValue.Annotations.dll => 0x14b2212446e714d4 => 287
	i64 1492954217099365037, ; 40: System.Net.HttpListener => 0x14b809f350210aad => 65
	i64 1513467482682125403, ; 41: Mono.Android.Runtime => 0x1500eaa8245f6c5b => 170
	i64 1537168428375924959, ; 42: System.Threading.Thread.dll => 0x15551e8a954ae0df => 145
	i64 1576750169145655260, ; 43: Xamarin.AndroidX.Window.Extensions.Core.Core => 0x15e1bdecc376bfdc => 285
	i64 1624659445732251991, ; 44: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0x168bf32877da9957 => 221
	i64 1628611045998245443, ; 45: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0x1699fd1e1a00b643 => 260
	i64 1636321030536304333, ; 46: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 0x16b5614ec39e16cd => 250
	i64 1651782184287836205, ; 47: System.Globalization.Calendars => 0x16ec4f2524cb982d => 40
	i64 1659332977923810219, ; 48: System.Reflection.DispatchProxy => 0x1707228d493d63ab => 89
	i64 1682513316613008342, ; 49: System.Net.dll => 0x17597cf276952bd6 => 81
	i64 1731380447121279447, ; 50: Newtonsoft.Json => 0x18071957e9b889d7 => 204
	i64 1735388228521408345, ; 51: System.Net.Mail.dll => 0x181556663c69b759 => 66
	i64 1743969030606105336, ; 52: System.Memory.dll => 0x1833d297e88f2af8 => 62
	i64 1767386781656293639, ; 53: System.Private.Uri.dll => 0x188704e9f5582107 => 86
	i64 1795316252682057001, ; 54: Xamarin.AndroidX.AppCompat.dll => 0x18ea3e9eac997529 => 220
	i64 1825687700144851180, ; 55: System.Runtime.InteropServices.RuntimeInformation.dll => 0x1956254a55ef08ec => 106
	i64 1835311033149317475, ; 56: es\Microsoft.Maui.Controls.resources => 0x197855a927386163 => 318
	i64 1836611346387731153, ; 57: Xamarin.AndroidX.SavedState => 0x197cf449ebe482d1 => 271
	i64 1854145951182283680, ; 58: System.Runtime.CompilerServices.VisualC => 0x19bb3feb3df2e3a0 => 102
	i64 1865037103900624886, ; 59: Microsoft.Bcl.AsyncInterfaces => 0x19e1f15d56eb87f6 => 178
	i64 1875417405349196092, ; 60: System.Drawing.Primitives => 0x1a06d2319b6c713c => 35
	i64 1875917498431009007, ; 61: Xamarin.AndroidX.Annotation.dll => 0x1a08990699eb70ef => 217
	i64 1881198190668717030, ; 62: tr\Microsoft.Maui.Controls.resources => 0x1a1b5bc992ea9be6 => 340
	i64 1897575647115118287, ; 63: Xamarin.AndroidX.Security.SecurityCrypto => 0x1a558aff4cba86cf => 273
	i64 1920760634179481754, ; 64: Microsoft.Maui.Controls.Xaml => 0x1aa7e99ec2d2709a => 199
	i64 1972385128188460614, ; 65: System.Security.Cryptography.Algorithms => 0x1b5f51d2edefbe46 => 119
	i64 1981742497975770890, ; 66: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x1b80904d5c241f0a => 258
	i64 2040001226662520565, ; 67: System.Threading.Tasks.Extensions.dll => 0x1c4f8a4ea894a6f5 => 142
	i64 2062890601515140263, ; 68: System.Threading.Tasks.Dataflow => 0x1ca0dc1289cd44a7 => 141
	i64 2064708342624596306, ; 69: Xamarin.Kotlin.StdLib.Jdk7.dll => 0x1ca7514c5eecb152 => 295
	i64 2080945842184875448, ; 70: System.IO.MemoryMappedFiles => 0x1ce10137d8416db8 => 53
	i64 2102659300918482391, ; 71: System.Drawing.Primitives.dll => 0x1d2e257e6aead5d7 => 35
	i64 2106033277907880740, ; 72: System.Threading.Tasks.Dataflow.dll => 0x1d3a221ba6d9cb24 => 141
	i64 2133195048986300728, ; 73: Newtonsoft.Json.dll => 0x1d9aa1984b735138 => 204
	i64 2165252314452558154, ; 74: Xamarin.AndroidX.Camera.Camera2.dll => 0x1e0c85820c09814a => 225
	i64 2165310824878145998, ; 75: Xamarin.Android.Glide.GifDecoder => 0x1e0cbab9112b81ce => 214
	i64 2165725771938924357, ; 76: Xamarin.AndroidX.Browser => 0x1e0e341d75540745 => 224
	i64 2200176636225660136, ; 77: Microsoft.Extensions.Logging.Debug.dll => 0x1e8898fe5d5824e8 => 186
	i64 2262844636196693701, ; 78: Xamarin.AndroidX.DrawerLayout.dll => 0x1f673d352266e6c5 => 242
	i64 2287834202362508563, ; 79: System.Collections.Concurrent => 0x1fc00515e8ce7513 => 8
	i64 2287887973817120656, ; 80: System.ComponentModel.DataAnnotations.dll => 0x1fc035fd8d41f790 => 14
	i64 2304837677853103545, ; 81: Xamarin.AndroidX.ResourceInspection.Annotation.dll => 0x1ffc6da80d5ed5b9 => 270
	i64 2315304989185124968, ; 82: System.IO.FileSystem.dll => 0x20219d9ee311aa68 => 51
	i64 2316229908869312383, ; 83: Microsoft.IdentityModel.Protocols.OpenIdConnect => 0x2024e6d4884a6f7f => 195
	i64 2329709569556905518, ; 84: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x2054ca829b447e2e => 253
	i64 2335503487726329082, ; 85: System.Text.Encodings.Web => 0x2069600c4d9d1cfa => 136
	i64 2337758774805907496, ; 86: System.Runtime.CompilerServices.Unsafe => 0x207163383edbc828 => 101
	i64 2470498323731680442, ; 87: Xamarin.AndroidX.CoordinatorLayout => 0x2248f922dc398cba => 235
	i64 2479423007379663237, ; 88: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x2268ae16b2cba985 => 280
	i64 2497223385847772520, ; 89: System.Runtime => 0x22a7eb7046413568 => 116
	i64 2547086958574651984, ; 90: Xamarin.AndroidX.Activity.dll => 0x2359121801df4a50 => 215
	i64 2554797818648757682, ; 91: System.Runtime.Caching.dll => 0x23747714858085b2 => 209
	i64 2592350477072141967, ; 92: System.Xml.dll => 0x23f9e10627330e8f => 163
	i64 2602673633151553063, ; 93: th\Microsoft.Maui.Controls.resources => 0x241e8de13a460e27 => 339
	i64 2612152650457191105, ; 94: Microsoft.IdentityModel.Tokens.dll => 0x24403afeed9892c1 => 196
	i64 2624866290265602282, ; 95: mscorlib.dll => 0x246d65fbde2db8ea => 166
	i64 2632269733008246987, ; 96: System.Net.NameResolution => 0x2487b36034f808cb => 67
	i64 2656907746661064104, ; 97: Microsoft.Extensions.DependencyInjection => 0x24df3b84c8b75da8 => 182
	i64 2662981627730767622, ; 98: cs\Microsoft.Maui.Controls.resources => 0x24f4cfae6c48af06 => 314
	i64 2706075432581334785, ; 99: System.Net.WebSockets => 0x258de944be6c0701 => 80
	i64 2783046991838674048, ; 100: System.Runtime.CompilerServices.Unsafe.dll => 0x269f5e7e6dc37c80 => 101
	i64 2787234703088983483, ; 101: Xamarin.AndroidX.Startup.StartupRuntime => 0x26ae3f31ef429dbb => 275
	i64 2789714023057451704, ; 102: Microsoft.IdentityModel.JsonWebTokens.dll => 0x26b70e1f9943eab8 => 192
	i64 2815524396660695947, ; 103: System.Security.AccessControl => 0x2712c0857f68238b => 117
	i64 2851879596360956261, ; 104: System.Configuration.ConfigurationManager => 0x2793e9620b477965 => 205
	i64 2895129759130297543, ; 105: fi\Microsoft.Maui.Controls.resources => 0x282d912d479fa4c7 => 319
	i64 2923871038697555247, ; 106: Jsr305Binding => 0x2893ad37e69ec52f => 288
	i64 2934188502315225119, ; 107: fr\Microsoft.Data.SqlClient.resources.dll => 0x28b854e59888d01f => 304
	i64 3004558106879253741, ; 108: ja\Microsoft.Data.SqlClient.resources => 0x29b255adeb8edced => 306
	i64 3017136373564924869, ; 109: System.Net.WebProxy => 0x29df058bd93f63c5 => 78
	i64 3017704767998173186, ; 110: Xamarin.Google.Android.Material => 0x29e10a7f7d88a002 => 286
	i64 3106852385031680087, ; 111: System.Runtime.Serialization.Xml => 0x2b1dc1c88b637057 => 114
	i64 3110390492489056344, ; 112: System.Security.Cryptography.Csp.dll => 0x2b2a53ac61900058 => 121
	i64 3135773902340015556, ; 113: System.IO.FileSystem.DriveInfo.dll => 0x2b8481c008eac5c4 => 48
	i64 3281594302220646930, ; 114: System.Security.Principal => 0x2d8a90a198ceba12 => 128
	i64 3289520064315143713, ; 115: Xamarin.AndroidX.Lifecycle.Common => 0x2da6b911e3063621 => 251
	i64 3303437397778967116, ; 116: Xamarin.AndroidX.Annotation.Experimental => 0x2dd82acf985b2a4c => 218
	i64 3311221304742556517, ; 117: System.Numerics.Vectors.dll => 0x2df3d23ba9e2b365 => 82
	i64 3325875462027654285, ; 118: System.Runtime.Numerics => 0x2e27e21c8958b48d => 110
	i64 3328853167529574890, ; 119: System.Net.Sockets.dll => 0x2e327651a008c1ea => 75
	i64 3344514922410554693, ; 120: Xamarin.KotlinX.Coroutines.Core.Jvm => 0x2e6a1a9a18463545 => 298
	i64 3402534845034375023, ; 121: System.IdentityModel.Tokens.Jwt.dll => 0x2f383b6a0629a76f => 207
	i64 3429672777697402584, ; 122: Microsoft.Maui.Essentials => 0x2f98a5385a7b1ed8 => 201
	i64 3437845325506641314, ; 123: System.IO.MemoryMappedFiles.dll => 0x2fb5ae1beb8f7da2 => 53
	i64 3493805808809882663, ; 124: Xamarin.AndroidX.Tracing.Tracing.dll => 0x307c7ddf444f3427 => 277
	i64 3494946837667399002, ; 125: Microsoft.Extensions.Configuration => 0x30808ba1c00a455a => 180
	i64 3508450208084372758, ; 126: System.Net.Ping => 0x30b084e02d03ad16 => 69
	i64 3522470458906976663, ; 127: Xamarin.AndroidX.SwipeRefreshLayout => 0x30e2543832f52197 => 276
	i64 3531994851595924923, ; 128: System.Numerics => 0x31042a9aade235bb => 83
	i64 3551103847008531295, ; 129: System.Private.CoreLib.dll => 0x31480e226177735f => 172
	i64 3567343442040498961, ; 130: pt\Microsoft.Maui.Controls.resources => 0x3181bff5bea4ab11 => 334
	i64 3571415421602489686, ; 131: System.Runtime.dll => 0x319037675df7e556 => 116
	i64 3638003163729360188, ; 132: Microsoft.Extensions.Configuration.Abstractions => 0x327cc89a39d5f53c => 181
	i64 3647754201059316852, ; 133: System.Xml.ReaderWriter => 0x329f6d1e86145474 => 156
	i64 3655542548057982301, ; 134: Microsoft.Extensions.Configuration.dll => 0x32bb18945e52855d => 180
	i64 3659371656528649588, ; 135: Xamarin.Android.Glide.Annotations => 0x32c8b3222885dd74 => 212
	i64 3670755665060182523, ; 136: es\Microsoft.Data.SqlClient.resources.dll => 0x32f124d4312a39fb => 303
	i64 3716579019761409177, ; 137: netstandard.dll => 0x3393f0ed5c8c5c99 => 167
	i64 3727469159507183293, ; 138: Xamarin.AndroidX.RecyclerView => 0x33baa1739ba646bd => 269
	i64 3772598417116884899, ; 139: Xamarin.AndroidX.DynamicAnimation.dll => 0x345af645b473efa3 => 243
	i64 3869221888984012293, ; 140: Microsoft.Extensions.Logging.dll => 0x35b23cceda0ed605 => 184
	i64 3869649043256705283, ; 141: System.Diagnostics.Tools => 0x35b3c14d74bf0103 => 32
	i64 3890352374528606784, ; 142: Microsoft.Maui.Controls.Xaml.dll => 0x35fd4edf66e00240 => 199
	i64 3919223565570527920, ; 143: System.Security.Cryptography.Encoding => 0x3663e111652bd2b0 => 122
	i64 3933965368022646939, ; 144: System.Net.Requests => 0x369840a8bfadc09b => 72
	i64 3966267475168208030, ; 145: System.Memory => 0x370b03412596249e => 62
	i64 4006972109285359177, ; 146: System.Xml.XmlDocument => 0x379b9fe74ed9fe49 => 161
	i64 4009997192427317104, ; 147: System.Runtime.Serialization.Primitives => 0x37a65f335cf1a770 => 113
	i64 4070326265757318011, ; 148: da\Microsoft.Maui.Controls.resources.dll => 0x387cb42c56683b7b => 315
	i64 4073500526318903918, ; 149: System.Private.Xml.dll => 0x3887fb25779ae26e => 88
	i64 4073631083018132676, ; 150: Microsoft.Maui.Controls.Compatibility.dll => 0x388871e311491cc4 => 197
	i64 4120493066591692148, ; 151: zh-Hant\Microsoft.Maui.Controls.resources => 0x392eee9cdda86574 => 345
	i64 4148881117810174540, ; 152: System.Runtime.InteropServices.JavaScript.dll => 0x3993c9651a66aa4c => 105
	i64 4154383907710350974, ; 153: System.ComponentModel => 0x39a7562737acb67e => 18
	i64 4167269041631776580, ; 154: System.Threading.ThreadPool => 0x39d51d1d3df1cf44 => 146
	i64 4168469861834746866, ; 155: System.Security.Claims.dll => 0x39d96140fb94ebf2 => 118
	i64 4187479170553454871, ; 156: System.Linq.Expressions => 0x3a1cea1e912fa117 => 58
	i64 4201423742386704971, ; 157: Xamarin.AndroidX.Core.Core.Ktx => 0x3a4e74a233da124b => 237
	i64 4205801962323029395, ; 158: System.ComponentModel.TypeConverter => 0x3a5e0299f7e7ad93 => 17
	i64 4235503420553921860, ; 159: System.IO.IsolatedStorage.dll => 0x3ac787eb9b118544 => 52
	i64 4282138915307457788, ; 160: System.Reflection.Emit => 0x3b6d36a7ddc70cfc => 92
	i64 4321865999928413850, ; 161: System.Diagnostics.EventLog.dll => 0x3bfa5a3a8c924e9a => 206
	i64 4360412976914417659, ; 162: tr\Microsoft.Maui.Controls.resources.dll => 0x3c834c8002fcc7fb => 340
	i64 4373617458794931033, ; 163: System.IO.Pipes.dll => 0x3cb235e806eb2359 => 55
	i64 4397634830160618470, ; 164: System.Security.SecureString.dll => 0x3d0789940f9be3e6 => 129
	i64 4477672992252076438, ; 165: System.Web.HttpUtility.dll => 0x3e23e3dcdb8ba196 => 152
	i64 4484706122338676047, ; 166: System.Globalization.Extensions.dll => 0x3e3ce07510042d4f => 41
	i64 4533124835995628778, ; 167: System.Reflection.Emit.dll => 0x3ee8e505540534ea => 92
	i64 4636684751163556186, ; 168: Xamarin.AndroidX.VersionedParcelable.dll => 0x4058d0370893015a => 281
	i64 4672453897036726049, ; 169: System.IO.FileSystem.Watcher => 0x40d7e4104a437f21 => 50
	i64 4716677666592453464, ; 170: System.Xml.XmlSerializer => 0x417501590542f358 => 162
	i64 4725285941539738176, ; 171: Xamarin.AndroidX.Camera.Lifecycle => 0x41939687379f9240 => 227
	i64 4743821336939966868, ; 172: System.ComponentModel.Annotations => 0x41d5705f4239b194 => 13
	i64 4759461199762736555, ; 173: Xamarin.AndroidX.Lifecycle.Process.dll => 0x420d00be961cc5ab => 255
	i64 4794310189461587505, ; 174: Xamarin.AndroidX.Activity => 0x4288cfb749e4c631 => 215
	i64 4795410492532947900, ; 175: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0x428cb86f8f9b7bbc => 276
	i64 4809057822547766521, ; 176: System.Drawing => 0x42bd349c3145ecf9 => 36
	i64 4814660307502931973, ; 177: System.Net.NameResolution.dll => 0x42d11c0a5ee2a005 => 67
	i64 4853321196694829351, ; 178: System.Runtime.Loader.dll => 0x435a75ea15de7927 => 109
	i64 4871824391508510238, ; 179: nb\Microsoft.Maui.Controls.resources.dll => 0x439c3278d7f2c61e => 330
	i64 4953714692329509532, ; 180: sv\Microsoft.Maui.Controls.resources.dll => 0x44bf21444aef129c => 338
	i64 5055365687667823624, ; 181: Xamarin.AndroidX.Activity.Ktx.dll => 0x4628444ef7239408 => 216
	i64 5081566143765835342, ; 182: System.Resources.ResourceManager.dll => 0x4685597c05d06e4e => 99
	i64 5099468265966638712, ; 183: System.Resources.ResourceManager => 0x46c4f35ea8519678 => 99
	i64 5103417709280584325, ; 184: System.Collections.Specialized => 0x46d2fb5e161b6285 => 11
	i64 5182934613077526976, ; 185: System.Collections.Specialized.dll => 0x47ed7b91fa9009c0 => 11
	i64 5205316157927637098, ; 186: Xamarin.AndroidX.LocalBroadcastManager => 0x483cff7778e0c06a => 262
	i64 5244375036463807528, ; 187: System.Diagnostics.Contracts.dll => 0x48c7c34f4d59fc28 => 25
	i64 5262971552273843408, ; 188: System.Security.Principal.dll => 0x4909d4be0c44c4d0 => 128
	i64 5278787618751394462, ; 189: System.Net.WebClient.dll => 0x4942055efc68329e => 76
	i64 5280980186044710147, ; 190: Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx.dll => 0x4949cf7fd7123d03 => 254
	i64 5290786973231294105, ; 191: System.Runtime.Loader => 0x496ca6b869b72699 => 109
	i64 5376510917114486089, ; 192: Xamarin.AndroidX.VectorDrawable.Animated => 0x4a9d3431719e5d49 => 280
	i64 5408338804355907810, ; 193: Xamarin.AndroidX.Transition => 0x4b0e477cea9840e2 => 278
	i64 5423376490970181369, ; 194: System.Runtime.InteropServices.RuntimeInformation => 0x4b43b42f2b7b6ef9 => 106
	i64 5440320908473006344, ; 195: Microsoft.VisualBasic.Core => 0x4b7fe70acda9f908 => 2
	i64 5446034149219586269, ; 196: System.Diagnostics.Debug => 0x4b94333452e150dd => 26
	i64 5451019430259338467, ; 197: Xamarin.AndroidX.ConstraintLayout.dll => 0x4ba5e94a845c2ce3 => 233
	i64 5457765010617926378, ; 198: System.Xml.Serialization => 0x4bbde05c557002ea => 157
	i64 5471532531798518949, ; 199: sv\Microsoft.Maui.Controls.resources => 0x4beec9d926d82ca5 => 338
	i64 5507995362134886206, ; 200: System.Core.dll => 0x4c705499688c873e => 21
	i64 5522859530602327440, ; 201: uk\Microsoft.Maui.Controls.resources => 0x4ca5237b51eead90 => 341
	i64 5527431512186326818, ; 202: System.IO.FileSystem.Primitives.dll => 0x4cb561acbc2a8f22 => 49
	i64 5570799893513421663, ; 203: System.IO.Compression.Brotli => 0x4d4f74fcdfa6c35f => 43
	i64 5573260873512690141, ; 204: System.Security.Cryptography.dll => 0x4d58333c6e4ea1dd => 126
	i64 5574231584441077149, ; 205: Xamarin.AndroidX.Annotation.Jvm => 0x4d5ba617ae5f8d9d => 219
	i64 5591791169662171124, ; 206: System.Linq.Parallel => 0x4d9a087135e137f4 => 59
	i64 5650097808083101034, ; 207: System.Security.Cryptography.Algorithms.dll => 0x4e692e055d01a56a => 119
	i64 5692067934154308417, ; 208: Xamarin.AndroidX.ViewPager2.dll => 0x4efe49a0d4a8bb41 => 283
	i64 5724799082821825042, ; 209: Xamarin.AndroidX.ExifInterface => 0x4f72926f3e13b212 => 246
	i64 5757522595884336624, ; 210: Xamarin.AndroidX.Concurrent.Futures.dll => 0x4fe6d44bd9f885f0 => 232
	i64 5783556987928984683, ; 211: Microsoft.VisualBasic => 0x504352701bbc3c6b => 3
	i64 5896680224035167651, ; 212: Xamarin.AndroidX.Lifecycle.LiveData.dll => 0x51d5376bfbafdda3 => 252
	i64 5959344983920014087, ; 213: Xamarin.AndroidX.SavedState.SavedState.Ktx.dll => 0x52b3d8b05c8ef307 => 272
	i64 5979151488806146654, ; 214: System.Formats.Asn1 => 0x52fa3699a489d25e => 38
	i64 5984759512290286505, ; 215: System.Security.Cryptography.Primitives => 0x530e23115c33dba9 => 124
	i64 6102788177522843259, ; 216: Xamarin.AndroidX.SavedState.SavedState.Ktx => 0x54b1758374b3de7b => 272
	i64 6200764641006662125, ; 217: ro\Microsoft.Maui.Controls.resources => 0x560d8a96830131ed => 335
	i64 6222399776351216807, ; 218: System.Text.Json.dll => 0x565a67a0ffe264a7 => 137
	i64 6251069312384999852, ; 219: System.Transactions.Local => 0x56c0426b870da1ac => 149
	i64 6278736998281604212, ; 220: System.Private.DataContractSerialization => 0x57228e08a4ad6c74 => 85
	i64 6284145129771520194, ; 221: System.Reflection.Emit.ILGeneration => 0x5735c4b3610850c2 => 90
	i64 6300676701234028427, ; 222: es\Microsoft.Maui.Controls.resources.dll => 0x57708013cda25f8b => 318
	i64 6319713645133255417, ; 223: Xamarin.AndroidX.Lifecycle.Runtime => 0x57b42213b45b52f9 => 256
	i64 6357457916754632952, ; 224: _Microsoft.Android.Resource.Designer => 0x583a3a4ac2a7a0f8 => 346
	i64 6401687960814735282, ; 225: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0x58d75d486341cfb2 => 253
	i64 6471714727257221498, ; 226: fi\Microsoft.Maui.Controls.resources.dll => 0x59d026417dd4a97a => 319
	i64 6478287442656530074, ; 227: hr\Microsoft.Maui.Controls.resources => 0x59e7801b0c6a8e9a => 323
	i64 6504860066809920875, ; 228: Xamarin.AndroidX.Browser.dll => 0x5a45e7c43bd43d6b => 224
	i64 6548213210057960872, ; 229: Xamarin.AndroidX.CustomView.dll => 0x5adfed387b066da8 => 239
	i64 6557084851308642443, ; 230: Xamarin.AndroidX.Window.dll => 0x5aff71ee6c58c08b => 284
	i64 6560151584539558821, ; 231: Microsoft.Extensions.Options => 0x5b0a571be53243a5 => 187
	i64 6589202984700901502, ; 232: Xamarin.Google.ErrorProne.Annotations.dll => 0x5b718d34180a787e => 290
	i64 6591971792923354531, ; 233: Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx => 0x5b7b636b7e9765a3 => 254
	i64 6617685658146568858, ; 234: System.Text.Encoding.CodePages => 0x5bd6be0b4905fa9a => 133
	i64 6713440830605852118, ; 235: System.Reflection.TypeExtensions.dll => 0x5d2aeeddb8dd7dd6 => 96
	i64 6739853162153639747, ; 236: Microsoft.VisualBasic.dll => 0x5d88c4bde075ff43 => 3
	i64 6743165466166707109, ; 237: nl\Microsoft.Maui.Controls.resources => 0x5d948943c08c43a5 => 331
	i64 6772837112740759457, ; 238: System.Runtime.InteropServices.JavaScript => 0x5dfdf378527ec7a1 => 105
	i64 6786606130239981554, ; 239: System.Diagnostics.TraceSource => 0x5e2ede51877147f2 => 33
	i64 6798329586179154312, ; 240: System.Windows => 0x5e5884bd523ca188 => 154
	i64 6814185388980153342, ; 241: System.Xml.XDocument.dll => 0x5e90d98217d1abfe => 158
	i64 6832506761347760515, ; 242: ru\Microsoft.Data.SqlClient.resources.dll => 0x5ed1f0b303968183 => 309
	i64 6876862101832370452, ; 243: System.Xml.Linq => 0x5f6f85a57d108914 => 155
	i64 6894844156784520562, ; 244: System.Numerics.Vectors => 0x5faf683aead1ad72 => 82
	i64 6985504089449394141, ; 245: ZXing.Net.MAUI.Controls.dll => 0x60f17ef564ab6fdd => 301
	i64 7011053663211085209, ; 246: Xamarin.AndroidX.Fragment.Ktx => 0x614c442918e5dd99 => 248
	i64 7060896174307865760, ; 247: System.Threading.Tasks.Parallel.dll => 0x61fd57a90988f4a0 => 143
	i64 7083547580668757502, ; 248: System.Private.Xml.Linq.dll => 0x624dd0fe8f56c5fe => 87
	i64 7101497697220435230, ; 249: System.Configuration => 0x628d9687c0141d1e => 19
	i64 7103753931438454322, ; 250: Xamarin.AndroidX.Interpolator.dll => 0x62959a90372c7632 => 249
	i64 7112547816752919026, ; 251: System.IO.FileSystem => 0x62b4d88e3189b1f2 => 51
	i64 7192745174564810625, ; 252: Xamarin.Android.Glide.GifDecoder.dll => 0x63d1c3a0a1d72f81 => 214
	i64 7270811800166795866, ; 253: System.Linq => 0x64e71ccf51a90a5a => 61
	i64 7299370801165188114, ; 254: System.IO.Pipes.AccessControl.dll => 0x654c9311e74f3c12 => 54
	i64 7316205155833392065, ; 255: Microsoft.Win32.Primitives => 0x658861d38954abc1 => 4
	i64 7338192458477945005, ; 256: System.Reflection => 0x65d67f295d0740ad => 97
	i64 7348123982286201829, ; 257: System.Memory.Data.dll => 0x65f9c7d471b2a3e5 => 208
	i64 7349431895026339542, ; 258: Xamarin.Android.Glide.DiskLruCache => 0x65fe6d5e9bf88ed6 => 213
	i64 7377312882064240630, ; 259: System.ComponentModel.TypeConverter.dll => 0x66617afac45a2ff6 => 17
	i64 7488575175965059935, ; 260: System.Xml.Linq.dll => 0x67ecc3724534ab5f => 155
	i64 7489048572193775167, ; 261: System.ObjectModel => 0x67ee71ff6b419e3f => 84
	i64 7496222613193209122, ; 262: System.IdentityModel.Tokens.Jwt => 0x6807eec000a1b522 => 207
	i64 7592577537120840276, ; 263: System.Diagnostics.Process => 0x695e410af5b2aa54 => 29
	i64 7637303409920963731, ; 264: System.IO.Compression.ZipFile.dll => 0x69fd26fcb637f493 => 45
	i64 7654504624184590948, ; 265: System.Net.Http => 0x6a3a4366801b8264 => 64
	i64 7694700312542370399, ; 266: System.Net.Mail => 0x6ac9112a7e2cda5f => 66
	i64 7714652370974252055, ; 267: System.Private.CoreLib => 0x6b0ff375198b9c17 => 172
	i64 7725404731275645577, ; 268: Xamarin.AndroidX.Lifecycle.Runtime.Ktx => 0x6b3626ac11ce9289 => 257
	i64 7735176074855944702, ; 269: Microsoft.CSharp => 0x6b58dda848e391fe => 1
	i64 7735352534559001595, ; 270: Xamarin.Kotlin.StdLib.dll => 0x6b597e2582ce8bfb => 293
	i64 7742555799473854801, ; 271: it\Microsoft.Maui.Controls.resources.dll => 0x6b73157a51479951 => 326
	i64 7756332380610150586, ; 272: Xamarin.Google.AutoValue.Annotations => 0x6ba407349220c0ba => 287
	i64 7791074099216502080, ; 273: System.IO.FileSystem.AccessControl.dll => 0x6c1f749d468bcd40 => 47
	i64 7793763988543076423, ; 274: it\Microsoft.Data.SqlClient.resources.dll => 0x6c29030df0577847 => 305
	i64 7820441508502274321, ; 275: System.Data => 0x6c87ca1e14ff8111 => 24
	i64 7836164640616011524, ; 276: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x6cbfa6390d64d704 => 221
	i64 7886756138387249641, ; 277: pt-BR\Microsoft.Data.SqlClient.resources.dll => 0x6d7362ec0ab419e9 => 308
	i64 7975724199463739455, ; 278: sk\Microsoft.Maui.Controls.resources.dll => 0x6eaf76e6f785e03f => 337
	i64 8025517457475554965, ; 279: WindowsBase => 0x6f605d9b4786ce95 => 165
	i64 8031450141206250471, ; 280: System.Runtime.Intrinsics.dll => 0x6f757159d9dc03e7 => 108
	i64 8064050204834738623, ; 281: System.Collections.dll => 0x6fe942efa61731bf => 12
	i64 8073408692540562791, ; 282: ja\Microsoft.Data.SqlClient.resources.dll => 0x700a826e5d6e5d67 => 306
	i64 8083354569033831015, ; 283: Xamarin.AndroidX.Lifecycle.Common.dll => 0x702dd82730cad267 => 251
	i64 8085230611270010360, ; 284: System.Net.Http.Json.dll => 0x703482674fdd05f8 => 63
	i64 8087206902342787202, ; 285: System.Diagnostics.DiagnosticSource => 0x703b87d46f3aa082 => 27
	i64 8103644804370223335, ; 286: System.Data.DataSetExtensions.dll => 0x7075ee03be6d50e7 => 23
	i64 8108129031893776750, ; 287: ko\Microsoft.Maui.Controls.resources.dll => 0x7085dc65530f796e => 328
	i64 8113615946733131500, ; 288: System.Reflection.Extensions => 0x70995ab73cf916ec => 93
	i64 8167236081217502503, ; 289: Java.Interop.dll => 0x7157d9f1a9b8fd27 => 168
	i64 8185542183669246576, ; 290: System.Collections => 0x7198e33f4794aa70 => 12
	i64 8187640529827139739, ; 291: Xamarin.KotlinX.Coroutines.Android => 0x71a057ae90f0109b => 297
	i64 8234598844743906698, ; 292: Microsoft.Identity.Client.Extensions.Msal.dll => 0x72472c0540cd758a => 190
	i64 8246048515196606205, ; 293: Microsoft.Maui.Graphics.dll => 0x726fd96f64ee56fd => 202
	i64 8264926008854159966, ; 294: System.Diagnostics.Process.dll => 0x72b2ea6a64a3a25e => 29
	i64 8290740647658429042, ; 295: System.Runtime.Extensions => 0x730ea0b15c929a72 => 103
	i64 8318905602908530212, ; 296: System.ComponentModel.DataAnnotations => 0x7372b092055ea624 => 14
	i64 8320777595162576093, ; 297: Xamarin.AndroidX.Camera.View => 0x737957232eb1c4dd => 228
	i64 8368701292315763008, ; 298: System.Security.Cryptography => 0x7423997c6fd56140 => 126
	i64 8386351099740279196, ; 299: zh-HK\Microsoft.Maui.Controls.resources.dll => 0x74624de475b9d19c => 343
	i64 8398329775253868912, ; 300: Xamarin.AndroidX.ConstraintLayout.Core.dll => 0x748cdc6f3097d170 => 234
	i64 8400357532724379117, ; 301: Xamarin.AndroidX.Navigation.UI.dll => 0x749410ab44503ded => 266
	i64 8410671156615598628, ; 302: System.Reflection.Emit.Lightweight.dll => 0x74b8b4daf4b25224 => 91
	i64 8426919725312979251, ; 303: Xamarin.AndroidX.Lifecycle.Process => 0x74f26ed7aa033133 => 255
	i64 8513291706828295435, ; 304: Microsoft.SqlServer.Server => 0x762549b3b6c78d0b => 203
	i64 8518412311883997971, ; 305: System.Collections.Immutable => 0x76377add7c28e313 => 9
	i64 8563666267364444763, ; 306: System.Private.Uri => 0x76d841191140ca5b => 86
	i64 8598790081731763592, ; 307: Xamarin.AndroidX.Emoji2.ViewsHelper.dll => 0x77550a055fc61d88 => 245
	i64 8601935802264776013, ; 308: Xamarin.AndroidX.Transition.dll => 0x7760370982b4ed4d => 278
	i64 8623059219396073920, ; 309: System.Net.Quic.dll => 0x77ab42ac514299c0 => 71
	i64 8626175481042262068, ; 310: Java.Interop => 0x77b654e585b55834 => 168
	i64 8629545377263870989, ; 311: Xamarin.AndroidX.Camera.Core.dll => 0x77c24dcca0ed640d => 226
	i64 8638972117149407195, ; 312: Microsoft.CSharp.dll => 0x77e3cb5e8b31d7db => 1
	i64 8639588376636138208, ; 313: Xamarin.AndroidX.Navigation.Runtime => 0x77e5fbdaa2fda2e0 => 265
	i64 8648495978913578441, ; 314: Microsoft.Win32.Registry.dll => 0x7805a1456889bdc9 => 5
	i64 8677882282824630478, ; 315: pt-BR\Microsoft.Maui.Controls.resources => 0x786e07f5766b00ce => 333
	i64 8684531736582871431, ; 316: System.IO.Compression.FileSystem => 0x7885a79a0fa0d987 => 44
	i64 8725526185868997716, ; 317: System.Diagnostics.DiagnosticSource.dll => 0x79174bd613173454 => 27
	i64 8853378295825400934, ; 318: Xamarin.Kotlin.StdLib.Common.dll => 0x7add84a720d38466 => 294
	i64 8941376889969657626, ; 319: System.Xml.XDocument => 0x7c1626e87187471a => 158
	i64 8951477988056063522, ; 320: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller => 0x7c3a09cd9ccf5e22 => 268
	i64 8954753533646919997, ; 321: System.Runtime.Serialization.Json => 0x7c45ace50032d93d => 112
	i64 8955323522379913726, ; 322: Microsoft.Identity.Client => 0x7c47b34bd82799fe => 189
	i64 9041985878101337471, ; 323: BouncyCastle.Crypto => 0x7d7b963fe854257f => 175
	i64 9045785047181495996, ; 324: zh-HK\Microsoft.Maui.Controls.resources => 0x7d891592e3cb0ebc => 343
	i64 9052662452269567435, ; 325: Microsoft.IdentityModel.Protocols => 0x7da184898b0b4dcb => 194
	i64 9131857290992441898, ; 326: Xamarin.AndroidX.Camera.Core => 0x7ebadfd2d12a5a2a => 226
	i64 9138683372487561558, ; 327: System.Security.Cryptography.Csp => 0x7ed3201bc3e3d156 => 121
	i64 9312692141327339315, ; 328: Xamarin.AndroidX.ViewPager2 => 0x813d54296a634f33 => 283
	i64 9324707631942237306, ; 329: Xamarin.AndroidX.AppCompat => 0x8168042fd44a7c7a => 220
	i64 9363564275759486853, ; 330: el\Microsoft.Maui.Controls.resources.dll => 0x81f21019382e9785 => 317
	i64 9427266486299436557, ; 331: Microsoft.IdentityModel.Logging.dll => 0x82d460ebe6d2a60d => 193
	i64 9468215723722196442, ; 332: System.Xml.XPath.XDocument.dll => 0x8365dc09353ac5da => 159
	i64 9513793942805897923, ; 333: zh-Hans\Microsoft.Data.SqlClient.resources => 0x8407c92f4b3562c3 => 310
	i64 9551379474083066910, ; 334: uk\Microsoft.Maui.Controls.resources.dll => 0x848d5106bbadb41e => 341
	i64 9554839972845591462, ; 335: System.ServiceModel.Web => 0x84999c54e32a1ba6 => 131
	i64 9575902398040817096, ; 336: Xamarin.Google.Crypto.Tink.Android.dll => 0x84e4707ee708bdc8 => 289
	i64 9584643793929893533, ; 337: System.IO.dll => 0x85037ebfbbd7f69d => 57
	i64 9614888509256805277, ; 338: itextsharp => 0x856ef228453cab9d => 177
	i64 9659729154652888475, ; 339: System.Text.RegularExpressions => 0x860e407c9991dd9b => 138
	i64 9662334977499516867, ; 340: System.Numerics.dll => 0x8617827802b0cfc3 => 83
	i64 9667360217193089419, ; 341: System.Diagnostics.StackTrace => 0x86295ce5cd89898b => 30
	i64 9678050649315576968, ; 342: Xamarin.AndroidX.CoordinatorLayout.dll => 0x864f57c9feb18c88 => 235
	i64 9702891218465930390, ; 343: System.Collections.NonGeneric.dll => 0x86a79827b2eb3c96 => 10
	i64 9773637193738963987, ; 344: ca\Microsoft.Maui.Controls.resources.dll => 0x87a2ef3ea85b4c13 => 313
	i64 9780093022148426479, ; 345: Xamarin.AndroidX.Window.Extensions.Core.Core.dll => 0x87b9dec9576efaef => 285
	i64 9808709177481450983, ; 346: Mono.Android.dll => 0x881f890734e555e7 => 171
	i64 9819168441846169364, ; 347: Microsoft.IdentityModel.Protocols.dll => 0x8844b1ac75f77f14 => 194
	i64 9825649861376906464, ; 348: Xamarin.AndroidX.Concurrent.Futures => 0x885bb87d8abc94e0 => 232
	i64 9834056768316610435, ; 349: System.Transactions.dll => 0x8879968718899783 => 150
	i64 9836529246295212050, ; 350: System.Reflection.Metadata => 0x88825f3bbc2ac012 => 94
	i64 9901312892585205432, ; 351: ko\Microsoft.Data.SqlClient.resources.dll => 0x8968879dcc895eb8 => 307
	i64 9907349773706910547, ; 352: Xamarin.AndroidX.Emoji2.ViewsHelper => 0x897dfa20b758db53 => 245
	i64 9928953326093015128, ; 353: ProjetoFaculdade => 0x89caba71b9351858 => 0
	i64 9933555792566666578, ; 354: System.Linq.Queryable.dll => 0x89db145cf475c552 => 60
	i64 9956195530459977388, ; 355: Microsoft.Maui => 0x8a2b8315b36616ac => 200
	i64 9974604633896246661, ; 356: System.Xml.Serialization.dll => 0x8a6cea111a59dd85 => 157
	i64 10017511394021241210, ; 357: Microsoft.Extensions.Logging.Debug => 0x8b055989ae10717a => 186
	i64 10038780035334861115, ; 358: System.Net.Http.dll => 0x8b50e941206af13b => 64
	i64 10051358222726253779, ; 359: System.Private.Xml => 0x8b7d990c97ccccd3 => 88
	i64 10078727084704864206, ; 360: System.Net.WebSockets.Client => 0x8bded4e257f117ce => 79
	i64 10089571585547156312, ; 361: System.IO.FileSystem.AccessControl => 0x8c055be67469bb58 => 47
	i64 10092835686693276772, ; 362: Microsoft.Maui.Controls => 0x8c10f49539bd0c64 => 198
	i64 10105485790837105934, ; 363: System.Threading.Tasks.Parallel => 0x8c3de5c91d9a650e => 143
	i64 10143853363526200146, ; 364: da\Microsoft.Maui.Controls.resources => 0x8cc634e3c2a16b52 => 315
	i64 10209869394718195525, ; 365: nl\Microsoft.Maui.Controls.resources.dll => 0x8db0be1ecb4f7f45 => 331
	i64 10226222362177979215, ; 366: Xamarin.Kotlin.StdLib.Jdk7 => 0x8dead70ebbc6434f => 295
	i64 10229024438826829339, ; 367: Xamarin.AndroidX.CustomView => 0x8df4cb880b10061b => 239
	i64 10236703004850800690, ; 368: System.Net.ServicePoint.dll => 0x8e101325834e4832 => 74
	i64 10245369515835430794, ; 369: System.Reflection.Emit.Lightweight => 0x8e2edd4ad7fc978a => 91
	i64 10321854143672141184, ; 370: Xamarin.Jetbrains.Annotations.dll => 0x8f3e97a7f8f8c580 => 292
	i64 10360651442923773544, ; 371: System.Text.Encoding => 0x8fc86d98211c1e68 => 135
	i64 10364469296367737616, ; 372: System.Reflection.Emit.ILGeneration.dll => 0x8fd5fde967711b10 => 90
	i64 10376576884623852283, ; 373: Xamarin.AndroidX.Tracing.Tracing => 0x900101b2f888c2fb => 277
	i64 10406448008575299332, ; 374: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 0x906b2153fcb3af04 => 298
	i64 10430153318873392755, ; 375: Xamarin.AndroidX.Core => 0x90bf592ea44f6673 => 236
	i64 10447083246144586668, ; 376: Microsoft.Bcl.AsyncInterfaces.dll => 0x90fb7edc816203ac => 178
	i64 10506226065143327199, ; 377: ca\Microsoft.Maui.Controls.resources => 0x91cd9cf11ed169df => 313
	i64 10546663366131771576, ; 378: System.Runtime.Serialization.Json.dll => 0x925d4673efe8e8b8 => 112
	i64 10566960649245365243, ; 379: System.Globalization.dll => 0x92a562b96dcd13fb => 42
	i64 10595762989148858956, ; 380: System.Xml.XPath.XDocument => 0x930bb64cc472ea4c => 159
	i64 10670374202010151210, ; 381: Microsoft.Win32.Primitives.dll => 0x9414c8cd7b4ea92a => 4
	i64 10714184849103829812, ; 382: System.Runtime.Extensions.dll => 0x94b06e5aa4b4bb34 => 103
	i64 10761706286639228993, ; 383: zh-Hant\Microsoft.Maui.Controls.resources.dll => 0x955942d988382841 => 345
	i64 10785150219063592792, ; 384: System.Net.Primitives => 0x95ac8cfb68830758 => 70
	i64 10822644899632537592, ; 385: System.Linq.Queryable => 0x9631c23204ca5ff8 => 60
	i64 10830817578243619689, ; 386: System.Formats.Tar => 0x964ecb340a447b69 => 39
	i64 10847732767863316357, ; 387: Xamarin.AndroidX.Arch.Core.Common => 0x968ae37a86db9f85 => 222
	i64 10858124219977111934, ; 388: de\Microsoft.Data.SqlClient.resources.dll => 0x96afce7302cd197e => 302
	i64 10889380495983713167, ; 389: Microsoft.Data.SqlClient.dll => 0x971ed9dddf2d1b8f => 179
	i64 10899834349646441345, ; 390: System.Web => 0x9743fd975946eb81 => 153
	i64 10943875058216066601, ; 391: System.IO.UnmanagedMemoryStream.dll => 0x97e07461df39de29 => 56
	i64 10964653383833615866, ; 392: System.Diagnostics.Tracing => 0x982a4628ccaffdfa => 34
	i64 11002576679268595294, ; 393: Microsoft.Extensions.Logging.Abstractions => 0x98b1013215cd365e => 185
	i64 11009005086950030778, ; 394: Microsoft.Maui.dll => 0x98c7d7cc621ffdba => 200
	i64 11019817191295005410, ; 395: Xamarin.AndroidX.Annotation.Jvm.dll => 0x98ee415998e1b2e2 => 219
	i64 11023048688141570732, ; 396: System.Core => 0x98f9bc61168392ac => 21
	i64 11037814507248023548, ; 397: System.Xml => 0x992e31d0412bf7fc => 163
	i64 11071824625609515081, ; 398: Xamarin.Google.ErrorProne.Annotations => 0x99a705d600e0a049 => 290
	i64 11103970607964515343, ; 399: hu\Microsoft.Maui.Controls.resources => 0x9a193a6fc41a6c0f => 324
	i64 11136029745144976707, ; 400: Jsr305Binding.dll => 0x9a8b200d4f8cd543 => 288
	i64 11156122287428000958, ; 401: th\Microsoft.Maui.Controls.resources.dll => 0x9ad2821cdcf6dcbe => 339
	i64 11157797727133427779, ; 402: fr\Microsoft.Maui.Controls.resources.dll => 0x9ad875ea9172e843 => 320
	i64 11162124722117608902, ; 403: Xamarin.AndroidX.ViewPager => 0x9ae7d54b986d05c6 => 282
	i64 11183417087873056340, ; 404: ko\Microsoft.Data.SqlClient.resources => 0x9b337a96d1b4fe54 => 307
	i64 11188319605227840848, ; 405: System.Threading.Overlapped => 0x9b44e5671724e550 => 140
	i64 11220793807500858938, ; 406: ja\Microsoft.Maui.Controls.resources => 0x9bb8448481fdd63a => 327
	i64 11226290749488709958, ; 407: Microsoft.Extensions.Options.dll => 0x9bcbcbf50c874146 => 187
	i64 11235648312900863002, ; 408: System.Reflection.DispatchProxy.dll => 0x9bed0a9c8fac441a => 89
	i64 11329751333533450475, ; 409: System.Threading.Timer.dll => 0x9d3b5ccf6cc500eb => 147
	i64 11340910727871153756, ; 410: Xamarin.AndroidX.CursorAdapter => 0x9d630238642d465c => 238
	i64 11341245327015630248, ; 411: System.Configuration.ConfigurationManager.dll => 0x9d643289535355a8 => 205
	i64 11347436699239206956, ; 412: System.Xml.XmlSerializer.dll => 0x9d7a318e8162502c => 162
	i64 11369118378396596751, ; 413: de\Microsoft.Data.SqlClient.resources => 0x9dc738edd1b1ba0f => 302
	i64 11392833485892708388, ; 414: Xamarin.AndroidX.Print.dll => 0x9e1b79b18fcf6824 => 267
	i64 11432101114902388181, ; 415: System.AppContext => 0x9ea6fb64e61a9dd5 => 6
	i64 11446671985764974897, ; 416: Mono.Android.Export => 0x9edabf8623efc131 => 169
	i64 11448276831755070604, ; 417: System.Diagnostics.TextWriterTraceListener => 0x9ee0731f77186c8c => 31
	i64 11485890710487134646, ; 418: System.Runtime.InteropServices => 0x9f6614bf0f8b71b6 => 107
	i64 11508496261504176197, ; 419: Xamarin.AndroidX.Fragment.Ktx.dll => 0x9fb664600dde1045 => 248
	i64 11517440453979132662, ; 420: Microsoft.IdentityModel.Abstractions.dll => 0x9fd62b122523d2f6 => 191
	i64 11518296021396496455, ; 421: id\Microsoft.Maui.Controls.resources => 0x9fd9353475222047 => 325
	i64 11529969570048099689, ; 422: Xamarin.AndroidX.ViewPager.dll => 0xa002ae3c4dc7c569 => 282
	i64 11530571088791430846, ; 423: Microsoft.Extensions.Logging => 0xa004d1504ccd66be => 184
	i64 11580057168383206117, ; 424: Xamarin.AndroidX.Annotation => 0xa0b4a0a4103262e5 => 217
	i64 11591352189662810718, ; 425: Xamarin.AndroidX.Startup.StartupRuntime.dll => 0xa0dcc167234c525e => 275
	i64 11597940890313164233, ; 426: netstandard => 0xa0f429ca8d1805c9 => 167
	i64 11672361001936329215, ; 427: Xamarin.AndroidX.Interpolator => 0xa1fc8e7d0a8999ff => 249
	i64 11692977985522001935, ; 428: System.Threading.Overlapped.dll => 0xa245cd869980680f => 140
	i64 11707554492040141440, ; 429: System.Linq.Parallel.dll => 0xa27996c7fe94da80 => 59
	i64 11743665907891708234, ; 430: System.Threading.Tasks => 0xa2f9e1ec30c0214a => 144
	i64 11855031688536399763, ; 431: vi\Microsoft.Maui.Controls.resources.dll => 0xa485888294361f93 => 342
	i64 11991047634523762324, ; 432: System.Net => 0xa668c24ad493ae94 => 81
	i64 12011556116648931059, ; 433: System.Security.Cryptography.ProtectedData => 0xa6b19ea5ec87aef3 => 210
	i64 12040886584167504988, ; 434: System.Net.ServicePoint => 0xa719d28d8e121c5c => 74
	i64 12063623837170009990, ; 435: System.Security => 0xa76a99f6ce740786 => 130
	i64 12094367927612810875, ; 436: it\Microsoft.Data.SqlClient.resources => 0xa7d7d38d2c3d267b => 305
	i64 12096697103934194533, ; 437: System.Diagnostics.Contracts => 0xa7e019eccb7e8365 => 25
	i64 12102847907131387746, ; 438: System.Buffers => 0xa7f5f40c43256f62 => 7
	i64 12123043025855404482, ; 439: System.Reflection.Extensions.dll => 0xa83db366c0e359c2 => 93
	i64 12137774235383566651, ; 440: Xamarin.AndroidX.VectorDrawable => 0xa872095bbfed113b => 279
	i64 12145679461940342714, ; 441: System.Text.Json => 0xa88e1f1ebcb62fba => 137
	i64 12191646537372739477, ; 442: Xamarin.Android.Glide.dll => 0xa9316dee7f392795 => 211
	i64 12198439281774268251, ; 443: Microsoft.IdentityModel.Protocols.OpenIdConnect.dll => 0xa9498fe58c538f5b => 195
	i64 12201331334810686224, ; 444: System.Runtime.Serialization.Primitives.dll => 0xa953d6341e3bd310 => 113
	i64 12269460666702402136, ; 445: System.Collections.Immutable.dll => 0xaa45e178506c9258 => 9
	i64 12332222936682028543, ; 446: System.Runtime.Handles => 0xab24db6c07db5dff => 104
	i64 12375446203996702057, ; 447: System.Configuration.dll => 0xabbe6ac12e2e0569 => 19
	i64 12439275739440478309, ; 448: Microsoft.IdentityModel.JsonWebTokens => 0xaca12f61007bf865 => 192
	i64 12451044538927396471, ; 449: Xamarin.AndroidX.Fragment.dll => 0xaccaff0a2955b677 => 247
	i64 12466513435562512481, ; 450: Xamarin.AndroidX.Loader.dll => 0xad01f3eb52569061 => 261
	i64 12475113361194491050, ; 451: _Microsoft.Android.Resource.Designer.dll => 0xad2081818aba1caa => 346
	i64 12487638416075308985, ; 452: Xamarin.AndroidX.DocumentFile.dll => 0xad4d00fa21b0bfb9 => 241
	i64 12493213219680520345, ; 453: Microsoft.Data.SqlClient => 0xad60cf3b3e458899 => 179
	i64 12517810545449516888, ; 454: System.Diagnostics.TraceSource.dll => 0xadb8325e6f283f58 => 33
	i64 12538491095302438457, ; 455: Xamarin.AndroidX.CardView.dll => 0xae01ab382ae67e39 => 229
	i64 12550732019250633519, ; 456: System.IO.Compression => 0xae2d28465e8e1b2f => 46
	i64 12699999919562409296, ; 457: System.Diagnostics.StackTrace.dll => 0xb03f76a3ad01c550 => 30
	i64 12700543734426720211, ; 458: Xamarin.AndroidX.Collection => 0xb041653c70d157d3 => 230
	i64 12708238894395270091, ; 459: System.IO => 0xb05cbbf17d3ba3cb => 57
	i64 12708922737231849740, ; 460: System.Text.Encoding.Extensions => 0xb05f29e50e96e90c => 134
	i64 12717050818822477433, ; 461: System.Runtime.Serialization.Xml.dll => 0xb07c0a5786811679 => 114
	i64 12753841065332862057, ; 462: Xamarin.AndroidX.Window => 0xb0febee04cf46c69 => 284
	i64 12760970142902902754, ; 463: Xamarin.AndroidX.Camera.Lifecycle.dll => 0xb11812bc0517dfe2 => 227
	i64 12828192437253469131, ; 464: Xamarin.Kotlin.StdLib.Jdk8.dll => 0xb206e50e14d873cb => 296
	i64 12835242264250840079, ; 465: System.IO.Pipes => 0xb21ff0d5d6c0740f => 55
	i64 12843321153144804894, ; 466: Microsoft.Extensions.Primitives => 0xb23ca48abd74d61e => 188
	i64 12843770487262409629, ; 467: System.AppContext.dll => 0xb23e3d357debf39d => 6
	i64 12859557719246324186, ; 468: System.Net.WebHeaderCollection.dll => 0xb276539ce04f41da => 77
	i64 12982280885948128408, ; 469: Xamarin.AndroidX.CustomView.PoolingContainer => 0xb42a53aec5481c98 => 240
	i64 12989346753972519995, ; 470: ar\Microsoft.Maui.Controls.resources.dll => 0xb4436e0d5ee7c43b => 312
	i64 13005833372463390146, ; 471: pt-BR\Microsoft.Maui.Controls.resources.dll => 0xb47e008b5d99ddc2 => 333
	i64 13068258254871114833, ; 472: System.Runtime.Serialization.Formatters.dll => 0xb55bc7a4eaa8b451 => 111
	i64 13081516019875753442, ; 473: BouncyCastle.Crypto.dll => 0xb58ae182e046ade2 => 175
	i64 13129914918964716986, ; 474: Xamarin.AndroidX.Emoji2.dll => 0xb636d40db3fe65ba => 244
	i64 13173818576982874404, ; 475: System.Runtime.CompilerServices.VisualC.dll => 0xb6d2ce32a8819924 => 102
	i64 13343850469010654401, ; 476: Mono.Android.Runtime.dll => 0xb92ee14d854f44c1 => 170
	i64 13370592475155966277, ; 477: System.Runtime.Serialization => 0xb98de304062ea945 => 115
	i64 13381594904270902445, ; 478: he\Microsoft.Maui.Controls.resources => 0xb9b4f9aaad3e94ad => 321
	i64 13401370062847626945, ; 479: Xamarin.AndroidX.VectorDrawable.dll => 0xb9fb3b1193964ec1 => 279
	i64 13404347523447273790, ; 480: Xamarin.AndroidX.ConstraintLayout.Core => 0xba05cf0da4f6393e => 234
	i64 13431476299110033919, ; 481: System.Net.WebClient => 0xba663087f18829ff => 76
	i64 13454009404024712428, ; 482: Xamarin.Google.Guava.ListenableFuture => 0xbab63e4543a86cec => 291
	i64 13463706743370286408, ; 483: System.Private.DataContractSerialization.dll => 0xbad8b1f3069e0548 => 85
	i64 13465488254036897740, ; 484: Xamarin.Kotlin.StdLib => 0xbadf06394d106fcc => 293
	i64 13491513212026656886, ; 485: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0xbb3b7bc905569876 => 223
	i64 13540124433173649601, ; 486: vi\Microsoft.Maui.Controls.resources => 0xbbe82f6eede718c1 => 342
	i64 13572454107664307259, ; 487: Xamarin.AndroidX.RecyclerView.dll => 0xbc5b0b19d99f543b => 269
	i64 13578472628727169633, ; 488: System.Xml.XPath => 0xbc706ce9fba5c261 => 160
	i64 13580399111273692417, ; 489: Microsoft.VisualBasic.Core.dll => 0xbc77450a277fbd01 => 2
	i64 13621154251410165619, ; 490: Xamarin.AndroidX.CustomView.PoolingContainer.dll => 0xbd080f9faa1acf73 => 240
	i64 13647894001087880694, ; 491: System.Data.dll => 0xbd670f48cb071df6 => 24
	i64 13675589307506966157, ; 492: Xamarin.AndroidX.Activity.Ktx => 0xbdc97404d0153e8d => 216
	i64 13702626353344114072, ; 493: System.Diagnostics.Tools.dll => 0xbe29821198fb6d98 => 32
	i64 13710614125866346983, ; 494: System.Security.AccessControl.dll => 0xbe45e2e7d0b769e7 => 117
	i64 13713329104121190199, ; 495: System.Dynamic.Runtime => 0xbe4f8829f32b5737 => 37
	i64 13717397318615465333, ; 496: System.ComponentModel.Primitives.dll => 0xbe5dfc2ef2f87d75 => 16
	i64 13742054908850494594, ; 497: Azure.Identity => 0xbeb596218df25c82 => 174
	i64 13768883594457632599, ; 498: System.IO.IsolatedStorage => 0xbf14e6adb159cf57 => 52
	i64 13828521679616088467, ; 499: Xamarin.Kotlin.StdLib.Common => 0xbfe8c733724e1993 => 294
	i64 13881769479078963060, ; 500: System.Console.dll => 0xc0a5f3cade5c6774 => 20
	i64 13911222732217019342, ; 501: System.Security.Cryptography.OpenSsl.dll => 0xc10e975ec1226bce => 123
	i64 13928444506500929300, ; 502: System.Windows.dll => 0xc14bc67b8bba9714 => 154
	i64 13959074834287824816, ; 503: Xamarin.AndroidX.Fragment => 0xc1b8989a7ad20fb0 => 247
	i64 14075334701871371868, ; 504: System.ServiceModel.Web.dll => 0xc355a25647c5965c => 131
	i64 14124974489674258913, ; 505: Xamarin.AndroidX.CardView => 0xc405fd76067d19e1 => 229
	i64 14125464355221830302, ; 506: System.Threading.dll => 0xc407bafdbc707a9e => 148
	i64 14178052285788134900, ; 507: Xamarin.Android.Glide.Annotations.dll => 0xc4c28f6f75511df4 => 212
	i64 14212104595480609394, ; 508: System.Security.Cryptography.Cng.dll => 0xc53b89d4a4518272 => 120
	i64 14220608275227875801, ; 509: System.Diagnostics.FileVersionInfo.dll => 0xc559bfe1def019d9 => 28
	i64 14226382999226559092, ; 510: System.ServiceProcess => 0xc56e43f6938e2a74 => 132
	i64 14232023429000439693, ; 511: System.Resources.Writer.dll => 0xc5824de7789ba78d => 100
	i64 14254574811015963973, ; 512: System.Text.Encoding.Extensions.dll => 0xc5d26c4442d66545 => 134
	i64 14261073672896646636, ; 513: Xamarin.AndroidX.Print => 0xc5e982f274ae0dec => 267
	i64 14298246716367104064, ; 514: System.Web.dll => 0xc66d93a217f4e840 => 153
	i64 14316535876961222820, ; 515: Xamarin.AndroidX.Camera.Camera2 => 0xc6ae8d872068c0a4 => 225
	i64 14327695147300244862, ; 516: System.Reflection.dll => 0xc6d632d338eb4d7e => 97
	i64 14327709162229390963, ; 517: System.Security.Cryptography.X509Certificates => 0xc6d63f9253cade73 => 125
	i64 14331727281556788554, ; 518: Xamarin.Android.Glide.DiskLruCache.dll => 0xc6e48607a2f7954a => 213
	i64 14346402571976470310, ; 519: System.Net.Ping.dll => 0xc718a920f3686f26 => 69
	i64 14349907877893689639, ; 520: ro\Microsoft.Maui.Controls.resources.dll => 0xc7251d2f956ed127 => 335
	i64 14461014870687870182, ; 521: System.Net.Requests.dll => 0xc8afd8683afdece6 => 72
	i64 14464374589798375073, ; 522: ru\Microsoft.Maui.Controls.resources => 0xc8bbc80dcb1e5ea1 => 336
	i64 14486659737292545672, ; 523: Xamarin.AndroidX.Lifecycle.LiveData => 0xc90af44707469e88 => 252
	i64 14491877563792607819, ; 524: zh-Hans\Microsoft.Maui.Controls.resources.dll => 0xc91d7ddcee4fca4b => 344
	i64 14495724990987328804, ; 525: Xamarin.AndroidX.ResourceInspection.Annotation => 0xc92b2913e18d5d24 => 270
	i64 14533141687369379279, ; 526: zh-Hant\Microsoft.Data.SqlClient.resources => 0xc9b0175d6212adcf => 311
	i64 14551742072151931844, ; 527: System.Text.Encodings.Web.dll => 0xc9f22c50f1b8fbc4 => 136
	i64 14561513370130550166, ; 528: System.Security.Cryptography.Primitives.dll => 0xca14e3428abb8d96 => 124
	i64 14574160591280636898, ; 529: System.Net.Quic => 0xca41d1d72ec783e2 => 71
	i64 14610046442689856844, ; 530: cs\Microsoft.Maui.Controls.resources.dll => 0xcac14fd5107d054c => 314
	i64 14622043554576106986, ; 531: System.Runtime.Serialization.Formatters => 0xcaebef2458cc85ea => 111
	i64 14644440854989303794, ; 532: Xamarin.AndroidX.LocalBroadcastManager.dll => 0xcb3b815e37daeff2 => 262
	i64 14648804764802849406, ; 533: Azure.Identity.dll => 0xcb4b0252261f9a7e => 174
	i64 14669215534098758659, ; 534: Microsoft.Extensions.DependencyInjection.dll => 0xcb9385ceb3993c03 => 182
	i64 14690985099581930927, ; 535: System.Web.HttpUtility => 0xcbe0dd1ca5233daf => 152
	i64 14705122255218365489, ; 536: ko\Microsoft.Maui.Controls.resources => 0xcc1316c7b0fb5431 => 328
	i64 14735017007120366644, ; 537: ja\Microsoft.Maui.Controls.resources.dll => 0xcc7d4be604bfbc34 => 327
	i64 14744092281598614090, ; 538: zh-Hans\Microsoft.Maui.Controls.resources => 0xcc9d89d004439a4a => 344
	i64 14792063746108907174, ; 539: Xamarin.Google.Guava.ListenableFuture.dll => 0xcd47f79af9c15ea6 => 291
	i64 14832630590065248058, ; 540: System.Security.Claims => 0xcdd816ef5d6e873a => 118
	i64 14852515768018889994, ; 541: Xamarin.AndroidX.CursorAdapter.dll => 0xce1ebc6625a76d0a => 238
	i64 14889905118082851278, ; 542: GoogleGson.dll => 0xcea391d0969961ce => 176
	i64 14904040806490515477, ; 543: ar\Microsoft.Maui.Controls.resources => 0xced5ca2604cb2815 => 312
	i64 14912225920358050525, ; 544: System.Security.Principal.Windows => 0xcef2de7759506add => 127
	i64 14935719434541007538, ; 545: System.Text.Encoding.CodePages.dll => 0xcf4655b160b702b2 => 133
	i64 14954917835170835695, ; 546: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xcf8a8a895a82ecef => 183
	i64 14984936317414011727, ; 547: System.Net.WebHeaderCollection => 0xcff5302fe54ff34f => 77
	i64 14987728460634540364, ; 548: System.IO.Compression.dll => 0xcfff1ba06622494c => 46
	i64 14988210264188246988, ; 549: Xamarin.AndroidX.DocumentFile => 0xd000d1d307cddbcc => 241
	i64 15015154896917945444, ; 550: System.Net.Security.dll => 0xd0608bd33642dc64 => 73
	i64 15024878362326791334, ; 551: System.Net.Http.Json => 0xd0831743ebf0f4a6 => 63
	i64 15071021337266399595, ; 552: System.Resources.Reader.dll => 0xd127060e7a18a96b => 98
	i64 15076659072870671916, ; 553: System.ObjectModel.dll => 0xd13b0d8c1620662c => 84
	i64 15098643813271943940, ; 554: zh-Hant\Microsoft.Data.SqlClient.resources.dll => 0xd189288d58393b04 => 311
	i64 15104488571459301498, ; 555: ProjetoFaculdade.dll => 0xd19dec5427c7707a => 0
	i64 15111608613780139878, ; 556: ms\Microsoft.Maui.Controls.resources => 0xd1b737f831192f66 => 329
	i64 15115185479366240210, ; 557: System.IO.Compression.Brotli.dll => 0xd1c3ed1c1bc467d2 => 43
	i64 15133485256822086103, ; 558: System.Linq.dll => 0xd204f0a9127dd9d7 => 61
	i64 15138356091203993725, ; 559: Microsoft.IdentityModel.Abstractions => 0xd2163ea89395c07d => 191
	i64 15150743910298169673, ; 560: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller.dll => 0xd2424150783c3149 => 268
	i64 15203009853192377507, ; 561: pt\Microsoft.Maui.Controls.resources.dll => 0xd2fbf0e9984b94a3 => 334
	i64 15227001540531775957, ; 562: Microsoft.Extensions.Configuration.Abstractions.dll => 0xd3512d3999b8e9d5 => 181
	i64 15234786388537674379, ; 563: System.Dynamic.Runtime.dll => 0xd36cd580c5be8a8b => 37
	i64 15250465174479574862, ; 564: System.Globalization.Calendars.dll => 0xd3a489469852174e => 40
	i64 15272359115529052076, ; 565: Xamarin.AndroidX.Collection.Ktx => 0xd3f251b2fb4edfac => 231
	i64 15279429628684179188, ; 566: Xamarin.KotlinX.Coroutines.Android.dll => 0xd40b704b1c4c96f4 => 297
	i64 15299439993936780255, ; 567: System.Xml.XPath.dll => 0xd452879d55019bdf => 160
	i64 15338463749992804988, ; 568: System.Resources.Reader => 0xd4dd2b839286f27c => 98
	i64 15370334346939861994, ; 569: Xamarin.AndroidX.Core.dll => 0xd54e65a72c560bea => 236
	i64 15383240894167415497, ; 570: System.Memory.Data => 0xd57c4016df1c7ac9 => 208
	i64 15391712275433856905, ; 571: Microsoft.Extensions.DependencyInjection.Abstractions => 0xd59a58c406411f89 => 183
	i64 15440042012048828209, ; 572: pt-BR\Microsoft.Data.SqlClient.resources => 0xd6460c67b5472731 => 308
	i64 15475196252089753159, ; 573: System.Diagnostics.EventLog => 0xd6c2f1000b441e47 => 206
	i64 15526743539506359484, ; 574: System.Text.Encoding.dll => 0xd77a12fc26de2cbc => 135
	i64 15527772828719725935, ; 575: System.Console => 0xd77dbb1e38cd3d6f => 20
	i64 15530465045505749832, ; 576: System.Net.HttpListener.dll => 0xd7874bacc9fdb348 => 65
	i64 15536481058354060254, ; 577: de\Microsoft.Maui.Controls.resources => 0xd79cab34eec75bde => 316
	i64 15541854775306130054, ; 578: System.Security.Cryptography.X509Certificates.dll => 0xd7afc292e8d49286 => 125
	i64 15557562860424774966, ; 579: System.Net.Sockets => 0xd7e790fe7a6dc536 => 75
	i64 15582737692548360875, ; 580: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xd841015ed86f6aab => 260
	i64 15609085926864131306, ; 581: System.dll => 0xd89e9cf3334914ea => 164
	i64 15661133872274321916, ; 582: System.Xml.ReaderWriter.dll => 0xd9578647d4bfb1fc => 156
	i64 15710114879900314733, ; 583: Microsoft.Win32.Registry => 0xda058a3f5d096c6d => 5
	i64 15750144475371186037, ; 584: Xamarin.AndroidX.Camera.View.dll => 0xda93c0f3d794a775 => 228
	i64 15755368083429170162, ; 585: System.IO.FileSystem.Primitives => 0xdaa64fcbde529bf2 => 49
	i64 15777549416145007739, ; 586: Xamarin.AndroidX.SlidingPaneLayout.dll => 0xdaf51d99d77eb47b => 274
	i64 15783653065526199428, ; 587: el\Microsoft.Maui.Controls.resources => 0xdb0accd674b1c484 => 317
	i64 15817206913877585035, ; 588: System.Threading.Tasks.dll => 0xdb8201e29086ac8b => 144
	i64 15847085070278954535, ; 589: System.Threading.Channels.dll => 0xdbec27e8f35f8e27 => 139
	i64 15885744048853936810, ; 590: System.Resources.Writer => 0xdc75800bd0b6eaaa => 100
	i64 15928521404965645318, ; 591: Microsoft.Maui.Controls.Compatibility => 0xdd0d79d32c2eec06 => 197
	i64 15934062614519587357, ; 592: System.Security.Cryptography.OpenSsl => 0xdd2129868f45a21d => 123
	i64 15937190497610202713, ; 593: System.Security.Cryptography.Cng => 0xdd2c465197c97e59 => 120
	i64 15963349826457351533, ; 594: System.Threading.Tasks.Extensions => 0xdd893616f748b56d => 142
	i64 15971679995444160383, ; 595: System.Formats.Tar.dll => 0xdda6ce5592a9677f => 39
	i64 16018552496348375205, ; 596: System.Net.NetworkInformation.dll => 0xde4d54a020caa8a5 => 68
	i64 16054465462676478687, ; 597: System.Globalization.Extensions => 0xdecceb47319bdadf => 41
	i64 16056281320585338352, ; 598: ru\Microsoft.Maui.Controls.resources.dll => 0xded35eca8f3a9df0 => 336
	i64 16154507427712707110, ; 599: System => 0xe03056ea4e39aa26 => 164
	i64 16219561732052121626, ; 600: System.Net.Security => 0xe1177575db7c781a => 73
	i64 16274182383641215830, ; 601: zxing.dll => 0xe1d982a752dac356 => 299
	i64 16288847719894691167, ; 602: nb\Microsoft.Maui.Controls.resources => 0xe20d9cb300c12d5f => 330
	i64 16315482530584035869, ; 603: WindowsBase.dll => 0xe26c3ceb1e8d821d => 165
	i64 16321164108206115771, ; 604: Microsoft.Extensions.Logging.Abstractions.dll => 0xe2806c487e7b0bbb => 185
	i64 16337011941688632206, ; 605: System.Security.Principal.Windows.dll => 0xe2b8b9cdc3aa638e => 127
	i64 16361933716545543812, ; 606: Xamarin.AndroidX.ExifInterface.dll => 0xe3114406a52f1e84 => 246
	i64 16423015068819898779, ; 607: Xamarin.Kotlin.StdLib.Jdk8 => 0xe3ea453135e5c19b => 296
	i64 16454459195343277943, ; 608: System.Net.NetworkInformation => 0xe459fb756d988f77 => 68
	i64 16496768397145114574, ; 609: Mono.Android.Export.dll => 0xe4f04b741db987ce => 169
	i64 16540916324946374984, ; 610: fr\Microsoft.Data.SqlClient.resources => 0xe58d23c28fe37148 => 304
	i64 16589693266713801121, ; 611: Xamarin.AndroidX.Lifecycle.ViewModel.Ktx.dll => 0xe63a6e214f2a71a1 => 259
	i64 16621146507174665210, ; 612: Xamarin.AndroidX.ConstraintLayout => 0xe6aa2caf87dedbfa => 233
	i64 16649148416072044166, ; 613: Microsoft.Maui.Graphics => 0xe70da84600bb4e86 => 202
	i64 16677317093839702854, ; 614: Xamarin.AndroidX.Navigation.UI => 0xe771bb8960dd8b46 => 266
	i64 16702652415771857902, ; 615: System.ValueTuple => 0xe7cbbde0b0e6d3ee => 151
	i64 16709499819875633724, ; 616: System.IO.Compression.ZipFile => 0xe7e4118e32240a3c => 45
	i64 16737807731308835127, ; 617: System.Runtime.Intrinsics => 0xe848a3736f733137 => 108
	i64 16758309481308491337, ; 618: System.IO.FileSystem.DriveInfo => 0xe89179af15740e49 => 48
	i64 16762783179241323229, ; 619: System.Reflection.TypeExtensions => 0xe8a15e7d0d927add => 96
	i64 16765015072123548030, ; 620: System.Diagnostics.TextWriterTraceListener.dll => 0xe8a94c621bfe717e => 31
	i64 16803648858859583026, ; 621: ms\Microsoft.Maui.Controls.resources.dll => 0xe9328d9b8ab93632 => 329
	i64 16822611501064131242, ; 622: System.Data.DataSetExtensions => 0xe975ec07bb5412aa => 23
	i64 16833383113903931215, ; 623: mscorlib => 0xe99c30c1484d7f4f => 166
	i64 16856067890322379635, ; 624: System.Data.Common.dll => 0xe9ecc87060889373 => 22
	i64 16885326587688996227, ; 625: ZXing.Net.MAUI.dll => 0xea54bb11b7a94d83 => 300
	i64 16890310621557459193, ; 626: System.Text.RegularExpressions.dll => 0xea66700587f088f9 => 138
	i64 16933958494752847024, ; 627: System.Net.WebProxy.dll => 0xeb018187f0f3b4b0 => 78
	i64 16942731696432749159, ; 628: sk\Microsoft.Maui.Controls.resources => 0xeb20acb622a01a67 => 337
	i64 16945858842201062480, ; 629: Azure.Core => 0xeb2bc8d57f4e7c50 => 173
	i64 16977952268158210142, ; 630: System.IO.Pipes.AccessControl => 0xeb9dcda2851b905e => 54
	i64 16989020923549080504, ; 631: Xamarin.AndroidX.Lifecycle.ViewModel.Ktx => 0xebc52084add25bb8 => 259
	i64 16998075588627545693, ; 632: Xamarin.AndroidX.Navigation.Fragment => 0xebe54bb02d623e5d => 264
	i64 17008137082415910100, ; 633: System.Collections.NonGeneric => 0xec090a90408c8cd4 => 10
	i64 17024911836938395553, ; 634: Xamarin.AndroidX.Annotation.Experimental.dll => 0xec44a31d250e5fa1 => 218
	i64 17031351772568316411, ; 635: Xamarin.AndroidX.Navigation.Common.dll => 0xec5b843380a769fb => 263
	i64 17037200463775726619, ; 636: Xamarin.AndroidX.Legacy.Support.Core.Utils => 0xec704b8e0a78fc1b => 250
	i64 17040771374769818752, ; 637: zxing => 0xec7cfb478bcccc80 => 299
	i64 17062143951396181894, ; 638: System.ComponentModel.Primitives => 0xecc8e986518c9786 => 16
	i64 17118171214553292978, ; 639: System.Threading.Channels => 0xed8ff6060fc420b2 => 139
	i64 17137864900836977098, ; 640: Microsoft.IdentityModel.Tokens => 0xedd5ed53b705e9ca => 196
	i64 17161234552559372542, ; 641: zh-Hans\Microsoft.Data.SqlClient.resources.dll => 0xee28f3e6c47608fe => 310
	i64 17187273293601214786, ; 642: System.ComponentModel.Annotations.dll => 0xee8575ff9aa89142 => 13
	i64 17197986060146327831, ; 643: Microsoft.Identity.Client.Extensions.Msal => 0xeeab8533ef244117 => 190
	i64 17201328579425343169, ; 644: System.ComponentModel.EventBasedAsync => 0xeeb76534d96c16c1 => 15
	i64 17202182880784296190, ; 645: System.Security.Cryptography.Encoding.dll => 0xeeba6e30627428fe => 122
	i64 17203614576212522419, ; 646: pl\Microsoft.Maui.Controls.resources.dll => 0xeebf844ef3e135b3 => 332
	i64 17230721278011714856, ; 647: System.Private.Xml.Linq => 0xef1fd1b5c7a72d28 => 87
	i64 17234219099804750107, ; 648: System.Transactions.Local.dll => 0xef2c3ef5e11d511b => 149
	i64 17260702271250283638, ; 649: System.Data.Common => 0xef8a5543bba6bc76 => 22
	i64 17306917412052548875, ; 650: ZXing.Net.MAUI => 0xf02e85b0b66a3d0b => 300
	i64 17310278548634113468, ; 651: hi\Microsoft.Maui.Controls.resources.dll => 0xf03a76a04e6695bc => 322
	i64 17333249706306540043, ; 652: System.Diagnostics.Tracing.dll => 0xf08c12c5bb8b920b => 34
	i64 17338386382517543202, ; 653: System.Net.WebSockets.Client.dll => 0xf09e528d5c6da122 => 79
	i64 17342750010158924305, ; 654: hi\Microsoft.Maui.Controls.resources => 0xf0add33f97ecc211 => 322
	i64 17360349973592121190, ; 655: Xamarin.Google.Crypto.Tink.Android => 0xf0ec5a52686b9f66 => 289
	i64 17371436720558481852, ; 656: System.Runtime.Caching => 0xf113bda8d710a1bc => 209
	i64 17470386307322966175, ; 657: System.Threading.Timer => 0xf27347c8d0d5709f => 147
	i64 17509662556995089465, ; 658: System.Net.WebSockets.dll => 0xf2fed1534ea67439 => 80
	i64 17514990004910432069, ; 659: fr\Microsoft.Maui.Controls.resources => 0xf311be9c6f341f45 => 320
	i64 17522591619082469157, ; 660: GoogleGson => 0xf32cc03d27a5bf25 => 176
	i64 17523946658117960076, ; 661: System.Security.Cryptography.ProtectedData.dll => 0xf33190a3c403c18c => 210
	i64 17558788868712318792, ; 662: es\Microsoft.Data.SqlClient.resources => 0xf3ad597215ae4748 => 303
	i64 17590473451926037903, ; 663: Xamarin.Android.Glide => 0xf41dea67fcfda58f => 211
	i64 17623389608345532001, ; 664: pl\Microsoft.Maui.Controls.resources => 0xf492db79dfbef661 => 332
	i64 17627500474728259406, ; 665: System.Globalization => 0xf4a176498a351f4e => 42
	i64 17685921127322830888, ; 666: System.Diagnostics.Debug.dll => 0xf571038fafa74828 => 26
	i64 17704177640604968747, ; 667: Xamarin.AndroidX.Loader => 0xf5b1dfc36cac272b => 261
	i64 17710060891934109755, ; 668: Xamarin.AndroidX.Lifecycle.ViewModel => 0xf5c6c68c9e45303b => 258
	i64 17712670374920797664, ; 669: System.Runtime.InteropServices.dll => 0xf5d00bdc38bd3de0 => 107
	i64 17777860260071588075, ; 670: System.Runtime.Numerics.dll => 0xf6b7a5b72419c0eb => 110
	i64 17790600151040787804, ; 671: Microsoft.IdentityModel.Logging => 0xf6e4e89427cc055c => 193
	i64 17827813215687577648, ; 672: hr\Microsoft.Maui.Controls.resources.dll => 0xf7691da9f3129030 => 323
	i64 17838668724098252521, ; 673: System.Buffers.dll => 0xf78faeb0f5bf3ee9 => 7
	i64 17891337867145587222, ; 674: Xamarin.Jetbrains.Annotations => 0xf84accff6fb52a16 => 292
	i64 17928294245072900555, ; 675: System.IO.Compression.FileSystem.dll => 0xf8ce18a0b24011cb => 44
	i64 17942426894774770628, ; 676: de\Microsoft.Maui.Controls.resources.dll => 0xf9004e329f771bc4 => 316
	i64 17992315986609351877, ; 677: System.Xml.XmlDocument.dll => 0xf9b18c0ffc6eacc5 => 161
	i64 18025913125965088385, ; 678: System.Threading => 0xfa28e87b91334681 => 148
	i64 18116111925905154859, ; 679: Xamarin.AndroidX.Arch.Core.Runtime => 0xfb695bd036cb632b => 223
	i64 18121036031235206392, ; 680: Xamarin.AndroidX.Navigation.Common => 0xfb7ada42d3d42cf8 => 263
	i64 18146411883821974900, ; 681: System.Formats.Asn1.dll => 0xfbd50176eb22c574 => 38
	i64 18146811631844267958, ; 682: System.ComponentModel.EventBasedAsync.dll => 0xfbd66d08820117b6 => 15
	i64 18225059387460068507, ; 683: System.Threading.ThreadPool.dll => 0xfcec6af3cff4a49b => 146
	i64 18245806341561545090, ; 684: System.Collections.Concurrent.dll => 0xfd3620327d587182 => 8
	i64 18260797123374478311, ; 685: Xamarin.AndroidX.Emoji2 => 0xfd6b623bde35f3e7 => 244
	i64 18305135509493619199, ; 686: Xamarin.AndroidX.Navigation.Runtime.dll => 0xfe08e7c2d8c199ff => 265
	i64 18318849532986632368, ; 687: System.Security.dll => 0xfe39a097c37fa8b0 => 130
	i64 18324163916253801303, ; 688: it\Microsoft.Maui.Controls.resources => 0xfe4c81ff0a56ab57 => 326
	i64 18335459783622540540, ; 689: ZXing.Net.MAUI.Controls => 0xfe74a3871c483cfc => 301
	i64 18342408478508122430, ; 690: id\Microsoft.Maui.Controls.resources.dll => 0xfe8d53543697013e => 325
	i64 18358161419737137786, ; 691: he\Microsoft.Maui.Controls.resources.dll => 0xfec54a8ba8b6827a => 321
	i64 18380184030268848184, ; 692: Xamarin.AndroidX.VersionedParcelable => 0xff1387fe3e7b7838 => 281
	i64 18439108438687598470 ; 693: System.Reflection.Metadata.dll => 0xffe4df6e2ee1c786 => 94
], align 8

@assembly_image_cache_indices = dso_local local_unnamed_addr constant [694 x i32] [
	i32 243, ; 0
	i32 188, ; 1
	i32 171, ; 2
	i32 201, ; 3
	i32 58, ; 4
	i32 230, ; 5
	i32 151, ; 6
	i32 271, ; 7
	i32 274, ; 8
	i32 237, ; 9
	i32 132, ; 10
	i32 56, ; 11
	i32 273, ; 12
	i32 95, ; 13
	i32 256, ; 14
	i32 129, ; 15
	i32 189, ; 16
	i32 145, ; 17
	i32 231, ; 18
	i32 18, ; 19
	i32 324, ; 20
	i32 242, ; 21
	i32 257, ; 22
	i32 203, ; 23
	i32 150, ; 24
	i32 104, ; 25
	i32 95, ; 26
	i32 173, ; 27
	i32 177, ; 28
	i32 286, ; 29
	i32 309, ; 30
	i32 36, ; 31
	i32 28, ; 32
	i32 222, ; 33
	i32 264, ; 34
	i32 50, ; 35
	i32 115, ; 36
	i32 70, ; 37
	i32 198, ; 38
	i32 287, ; 39
	i32 65, ; 40
	i32 170, ; 41
	i32 145, ; 42
	i32 285, ; 43
	i32 221, ; 44
	i32 260, ; 45
	i32 250, ; 46
	i32 40, ; 47
	i32 89, ; 48
	i32 81, ; 49
	i32 204, ; 50
	i32 66, ; 51
	i32 62, ; 52
	i32 86, ; 53
	i32 220, ; 54
	i32 106, ; 55
	i32 318, ; 56
	i32 271, ; 57
	i32 102, ; 58
	i32 178, ; 59
	i32 35, ; 60
	i32 217, ; 61
	i32 340, ; 62
	i32 273, ; 63
	i32 199, ; 64
	i32 119, ; 65
	i32 258, ; 66
	i32 142, ; 67
	i32 141, ; 68
	i32 295, ; 69
	i32 53, ; 70
	i32 35, ; 71
	i32 141, ; 72
	i32 204, ; 73
	i32 225, ; 74
	i32 214, ; 75
	i32 224, ; 76
	i32 186, ; 77
	i32 242, ; 78
	i32 8, ; 79
	i32 14, ; 80
	i32 270, ; 81
	i32 51, ; 82
	i32 195, ; 83
	i32 253, ; 84
	i32 136, ; 85
	i32 101, ; 86
	i32 235, ; 87
	i32 280, ; 88
	i32 116, ; 89
	i32 215, ; 90
	i32 209, ; 91
	i32 163, ; 92
	i32 339, ; 93
	i32 196, ; 94
	i32 166, ; 95
	i32 67, ; 96
	i32 182, ; 97
	i32 314, ; 98
	i32 80, ; 99
	i32 101, ; 100
	i32 275, ; 101
	i32 192, ; 102
	i32 117, ; 103
	i32 205, ; 104
	i32 319, ; 105
	i32 288, ; 106
	i32 304, ; 107
	i32 306, ; 108
	i32 78, ; 109
	i32 286, ; 110
	i32 114, ; 111
	i32 121, ; 112
	i32 48, ; 113
	i32 128, ; 114
	i32 251, ; 115
	i32 218, ; 116
	i32 82, ; 117
	i32 110, ; 118
	i32 75, ; 119
	i32 298, ; 120
	i32 207, ; 121
	i32 201, ; 122
	i32 53, ; 123
	i32 277, ; 124
	i32 180, ; 125
	i32 69, ; 126
	i32 276, ; 127
	i32 83, ; 128
	i32 172, ; 129
	i32 334, ; 130
	i32 116, ; 131
	i32 181, ; 132
	i32 156, ; 133
	i32 180, ; 134
	i32 212, ; 135
	i32 303, ; 136
	i32 167, ; 137
	i32 269, ; 138
	i32 243, ; 139
	i32 184, ; 140
	i32 32, ; 141
	i32 199, ; 142
	i32 122, ; 143
	i32 72, ; 144
	i32 62, ; 145
	i32 161, ; 146
	i32 113, ; 147
	i32 315, ; 148
	i32 88, ; 149
	i32 197, ; 150
	i32 345, ; 151
	i32 105, ; 152
	i32 18, ; 153
	i32 146, ; 154
	i32 118, ; 155
	i32 58, ; 156
	i32 237, ; 157
	i32 17, ; 158
	i32 52, ; 159
	i32 92, ; 160
	i32 206, ; 161
	i32 340, ; 162
	i32 55, ; 163
	i32 129, ; 164
	i32 152, ; 165
	i32 41, ; 166
	i32 92, ; 167
	i32 281, ; 168
	i32 50, ; 169
	i32 162, ; 170
	i32 227, ; 171
	i32 13, ; 172
	i32 255, ; 173
	i32 215, ; 174
	i32 276, ; 175
	i32 36, ; 176
	i32 67, ; 177
	i32 109, ; 178
	i32 330, ; 179
	i32 338, ; 180
	i32 216, ; 181
	i32 99, ; 182
	i32 99, ; 183
	i32 11, ; 184
	i32 11, ; 185
	i32 262, ; 186
	i32 25, ; 187
	i32 128, ; 188
	i32 76, ; 189
	i32 254, ; 190
	i32 109, ; 191
	i32 280, ; 192
	i32 278, ; 193
	i32 106, ; 194
	i32 2, ; 195
	i32 26, ; 196
	i32 233, ; 197
	i32 157, ; 198
	i32 338, ; 199
	i32 21, ; 200
	i32 341, ; 201
	i32 49, ; 202
	i32 43, ; 203
	i32 126, ; 204
	i32 219, ; 205
	i32 59, ; 206
	i32 119, ; 207
	i32 283, ; 208
	i32 246, ; 209
	i32 232, ; 210
	i32 3, ; 211
	i32 252, ; 212
	i32 272, ; 213
	i32 38, ; 214
	i32 124, ; 215
	i32 272, ; 216
	i32 335, ; 217
	i32 137, ; 218
	i32 149, ; 219
	i32 85, ; 220
	i32 90, ; 221
	i32 318, ; 222
	i32 256, ; 223
	i32 346, ; 224
	i32 253, ; 225
	i32 319, ; 226
	i32 323, ; 227
	i32 224, ; 228
	i32 239, ; 229
	i32 284, ; 230
	i32 187, ; 231
	i32 290, ; 232
	i32 254, ; 233
	i32 133, ; 234
	i32 96, ; 235
	i32 3, ; 236
	i32 331, ; 237
	i32 105, ; 238
	i32 33, ; 239
	i32 154, ; 240
	i32 158, ; 241
	i32 309, ; 242
	i32 155, ; 243
	i32 82, ; 244
	i32 301, ; 245
	i32 248, ; 246
	i32 143, ; 247
	i32 87, ; 248
	i32 19, ; 249
	i32 249, ; 250
	i32 51, ; 251
	i32 214, ; 252
	i32 61, ; 253
	i32 54, ; 254
	i32 4, ; 255
	i32 97, ; 256
	i32 208, ; 257
	i32 213, ; 258
	i32 17, ; 259
	i32 155, ; 260
	i32 84, ; 261
	i32 207, ; 262
	i32 29, ; 263
	i32 45, ; 264
	i32 64, ; 265
	i32 66, ; 266
	i32 172, ; 267
	i32 257, ; 268
	i32 1, ; 269
	i32 293, ; 270
	i32 326, ; 271
	i32 287, ; 272
	i32 47, ; 273
	i32 305, ; 274
	i32 24, ; 275
	i32 221, ; 276
	i32 308, ; 277
	i32 337, ; 278
	i32 165, ; 279
	i32 108, ; 280
	i32 12, ; 281
	i32 306, ; 282
	i32 251, ; 283
	i32 63, ; 284
	i32 27, ; 285
	i32 23, ; 286
	i32 328, ; 287
	i32 93, ; 288
	i32 168, ; 289
	i32 12, ; 290
	i32 297, ; 291
	i32 190, ; 292
	i32 202, ; 293
	i32 29, ; 294
	i32 103, ; 295
	i32 14, ; 296
	i32 228, ; 297
	i32 126, ; 298
	i32 343, ; 299
	i32 234, ; 300
	i32 266, ; 301
	i32 91, ; 302
	i32 255, ; 303
	i32 203, ; 304
	i32 9, ; 305
	i32 86, ; 306
	i32 245, ; 307
	i32 278, ; 308
	i32 71, ; 309
	i32 168, ; 310
	i32 226, ; 311
	i32 1, ; 312
	i32 265, ; 313
	i32 5, ; 314
	i32 333, ; 315
	i32 44, ; 316
	i32 27, ; 317
	i32 294, ; 318
	i32 158, ; 319
	i32 268, ; 320
	i32 112, ; 321
	i32 189, ; 322
	i32 175, ; 323
	i32 343, ; 324
	i32 194, ; 325
	i32 226, ; 326
	i32 121, ; 327
	i32 283, ; 328
	i32 220, ; 329
	i32 317, ; 330
	i32 193, ; 331
	i32 159, ; 332
	i32 310, ; 333
	i32 341, ; 334
	i32 131, ; 335
	i32 289, ; 336
	i32 57, ; 337
	i32 177, ; 338
	i32 138, ; 339
	i32 83, ; 340
	i32 30, ; 341
	i32 235, ; 342
	i32 10, ; 343
	i32 313, ; 344
	i32 285, ; 345
	i32 171, ; 346
	i32 194, ; 347
	i32 232, ; 348
	i32 150, ; 349
	i32 94, ; 350
	i32 307, ; 351
	i32 245, ; 352
	i32 0, ; 353
	i32 60, ; 354
	i32 200, ; 355
	i32 157, ; 356
	i32 186, ; 357
	i32 64, ; 358
	i32 88, ; 359
	i32 79, ; 360
	i32 47, ; 361
	i32 198, ; 362
	i32 143, ; 363
	i32 315, ; 364
	i32 331, ; 365
	i32 295, ; 366
	i32 239, ; 367
	i32 74, ; 368
	i32 91, ; 369
	i32 292, ; 370
	i32 135, ; 371
	i32 90, ; 372
	i32 277, ; 373
	i32 298, ; 374
	i32 236, ; 375
	i32 178, ; 376
	i32 313, ; 377
	i32 112, ; 378
	i32 42, ; 379
	i32 159, ; 380
	i32 4, ; 381
	i32 103, ; 382
	i32 345, ; 383
	i32 70, ; 384
	i32 60, ; 385
	i32 39, ; 386
	i32 222, ; 387
	i32 302, ; 388
	i32 179, ; 389
	i32 153, ; 390
	i32 56, ; 391
	i32 34, ; 392
	i32 185, ; 393
	i32 200, ; 394
	i32 219, ; 395
	i32 21, ; 396
	i32 163, ; 397
	i32 290, ; 398
	i32 324, ; 399
	i32 288, ; 400
	i32 339, ; 401
	i32 320, ; 402
	i32 282, ; 403
	i32 307, ; 404
	i32 140, ; 405
	i32 327, ; 406
	i32 187, ; 407
	i32 89, ; 408
	i32 147, ; 409
	i32 238, ; 410
	i32 205, ; 411
	i32 162, ; 412
	i32 302, ; 413
	i32 267, ; 414
	i32 6, ; 415
	i32 169, ; 416
	i32 31, ; 417
	i32 107, ; 418
	i32 248, ; 419
	i32 191, ; 420
	i32 325, ; 421
	i32 282, ; 422
	i32 184, ; 423
	i32 217, ; 424
	i32 275, ; 425
	i32 167, ; 426
	i32 249, ; 427
	i32 140, ; 428
	i32 59, ; 429
	i32 144, ; 430
	i32 342, ; 431
	i32 81, ; 432
	i32 210, ; 433
	i32 74, ; 434
	i32 130, ; 435
	i32 305, ; 436
	i32 25, ; 437
	i32 7, ; 438
	i32 93, ; 439
	i32 279, ; 440
	i32 137, ; 441
	i32 211, ; 442
	i32 195, ; 443
	i32 113, ; 444
	i32 9, ; 445
	i32 104, ; 446
	i32 19, ; 447
	i32 192, ; 448
	i32 247, ; 449
	i32 261, ; 450
	i32 346, ; 451
	i32 241, ; 452
	i32 179, ; 453
	i32 33, ; 454
	i32 229, ; 455
	i32 46, ; 456
	i32 30, ; 457
	i32 230, ; 458
	i32 57, ; 459
	i32 134, ; 460
	i32 114, ; 461
	i32 284, ; 462
	i32 227, ; 463
	i32 296, ; 464
	i32 55, ; 465
	i32 188, ; 466
	i32 6, ; 467
	i32 77, ; 468
	i32 240, ; 469
	i32 312, ; 470
	i32 333, ; 471
	i32 111, ; 472
	i32 175, ; 473
	i32 244, ; 474
	i32 102, ; 475
	i32 170, ; 476
	i32 115, ; 477
	i32 321, ; 478
	i32 279, ; 479
	i32 234, ; 480
	i32 76, ; 481
	i32 291, ; 482
	i32 85, ; 483
	i32 293, ; 484
	i32 223, ; 485
	i32 342, ; 486
	i32 269, ; 487
	i32 160, ; 488
	i32 2, ; 489
	i32 240, ; 490
	i32 24, ; 491
	i32 216, ; 492
	i32 32, ; 493
	i32 117, ; 494
	i32 37, ; 495
	i32 16, ; 496
	i32 174, ; 497
	i32 52, ; 498
	i32 294, ; 499
	i32 20, ; 500
	i32 123, ; 501
	i32 154, ; 502
	i32 247, ; 503
	i32 131, ; 504
	i32 229, ; 505
	i32 148, ; 506
	i32 212, ; 507
	i32 120, ; 508
	i32 28, ; 509
	i32 132, ; 510
	i32 100, ; 511
	i32 134, ; 512
	i32 267, ; 513
	i32 153, ; 514
	i32 225, ; 515
	i32 97, ; 516
	i32 125, ; 517
	i32 213, ; 518
	i32 69, ; 519
	i32 335, ; 520
	i32 72, ; 521
	i32 336, ; 522
	i32 252, ; 523
	i32 344, ; 524
	i32 270, ; 525
	i32 311, ; 526
	i32 136, ; 527
	i32 124, ; 528
	i32 71, ; 529
	i32 314, ; 530
	i32 111, ; 531
	i32 262, ; 532
	i32 174, ; 533
	i32 182, ; 534
	i32 152, ; 535
	i32 328, ; 536
	i32 327, ; 537
	i32 344, ; 538
	i32 291, ; 539
	i32 118, ; 540
	i32 238, ; 541
	i32 176, ; 542
	i32 312, ; 543
	i32 127, ; 544
	i32 133, ; 545
	i32 183, ; 546
	i32 77, ; 547
	i32 46, ; 548
	i32 241, ; 549
	i32 73, ; 550
	i32 63, ; 551
	i32 98, ; 552
	i32 84, ; 553
	i32 311, ; 554
	i32 0, ; 555
	i32 329, ; 556
	i32 43, ; 557
	i32 61, ; 558
	i32 191, ; 559
	i32 268, ; 560
	i32 334, ; 561
	i32 181, ; 562
	i32 37, ; 563
	i32 40, ; 564
	i32 231, ; 565
	i32 297, ; 566
	i32 160, ; 567
	i32 98, ; 568
	i32 236, ; 569
	i32 208, ; 570
	i32 183, ; 571
	i32 308, ; 572
	i32 206, ; 573
	i32 135, ; 574
	i32 20, ; 575
	i32 65, ; 576
	i32 316, ; 577
	i32 125, ; 578
	i32 75, ; 579
	i32 260, ; 580
	i32 164, ; 581
	i32 156, ; 582
	i32 5, ; 583
	i32 228, ; 584
	i32 49, ; 585
	i32 274, ; 586
	i32 317, ; 587
	i32 144, ; 588
	i32 139, ; 589
	i32 100, ; 590
	i32 197, ; 591
	i32 123, ; 592
	i32 120, ; 593
	i32 142, ; 594
	i32 39, ; 595
	i32 68, ; 596
	i32 41, ; 597
	i32 336, ; 598
	i32 164, ; 599
	i32 73, ; 600
	i32 299, ; 601
	i32 330, ; 602
	i32 165, ; 603
	i32 185, ; 604
	i32 127, ; 605
	i32 246, ; 606
	i32 296, ; 607
	i32 68, ; 608
	i32 169, ; 609
	i32 304, ; 610
	i32 259, ; 611
	i32 233, ; 612
	i32 202, ; 613
	i32 266, ; 614
	i32 151, ; 615
	i32 45, ; 616
	i32 108, ; 617
	i32 48, ; 618
	i32 96, ; 619
	i32 31, ; 620
	i32 329, ; 621
	i32 23, ; 622
	i32 166, ; 623
	i32 22, ; 624
	i32 300, ; 625
	i32 138, ; 626
	i32 78, ; 627
	i32 337, ; 628
	i32 173, ; 629
	i32 54, ; 630
	i32 259, ; 631
	i32 264, ; 632
	i32 10, ; 633
	i32 218, ; 634
	i32 263, ; 635
	i32 250, ; 636
	i32 299, ; 637
	i32 16, ; 638
	i32 139, ; 639
	i32 196, ; 640
	i32 310, ; 641
	i32 13, ; 642
	i32 190, ; 643
	i32 15, ; 644
	i32 122, ; 645
	i32 332, ; 646
	i32 87, ; 647
	i32 149, ; 648
	i32 22, ; 649
	i32 300, ; 650
	i32 322, ; 651
	i32 34, ; 652
	i32 79, ; 653
	i32 322, ; 654
	i32 289, ; 655
	i32 209, ; 656
	i32 147, ; 657
	i32 80, ; 658
	i32 320, ; 659
	i32 176, ; 660
	i32 210, ; 661
	i32 303, ; 662
	i32 211, ; 663
	i32 332, ; 664
	i32 42, ; 665
	i32 26, ; 666
	i32 261, ; 667
	i32 258, ; 668
	i32 107, ; 669
	i32 110, ; 670
	i32 193, ; 671
	i32 323, ; 672
	i32 7, ; 673
	i32 292, ; 674
	i32 44, ; 675
	i32 316, ; 676
	i32 161, ; 677
	i32 148, ; 678
	i32 223, ; 679
	i32 263, ; 680
	i32 38, ; 681
	i32 15, ; 682
	i32 146, ; 683
	i32 8, ; 684
	i32 244, ; 685
	i32 265, ; 686
	i32 130, ; 687
	i32 326, ; 688
	i32 301, ; 689
	i32 325, ; 690
	i32 321, ; 691
	i32 281, ; 692
	i32 94 ; 693
], align 4

@marshal_methods_number_of_classes = dso_local local_unnamed_addr constant i32 0, align 4

@marshal_methods_class_cache = dso_local local_unnamed_addr global [0 x %struct.MarshalMethodsManagedClass] zeroinitializer, align 8

; Names of classes in which marshal methods reside
@mm_class_names = dso_local local_unnamed_addr constant [0 x ptr] zeroinitializer, align 8

@mm_method_names = dso_local local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		ptr @.MarshalMethodName.0_name; char* name
	} ; 0
], align 8

; get_function_pointer (uint32_t mono_image_index, uint32_t class_index, uint32_t method_token, void*& target_ptr)
@get_function_pointer = internal dso_local unnamed_addr global ptr null, align 8

; Functions

; Function attributes: "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" uwtable willreturn
define void @xamarin_app_init(ptr nocapture noundef readnone %env, ptr noundef %fn) local_unnamed_addr #0
{
	%fnIsNull = icmp eq ptr %fn, null
	br i1 %fnIsNull, label %1, label %2

1: ; preds = %0
	%putsResult = call noundef i32 @puts(ptr @.str.0)
	call void @abort()
	unreachable 

2: ; preds = %1, %0
	store ptr %fn, ptr @get_function_pointer, align 8, !tbaa !3
	ret void
}

; Strings
@.str.0 = private unnamed_addr constant [40 x i8] c"get_function_pointer MUST be specified\0A\00", align 1

;MarshalMethodName
@.MarshalMethodName.0_name = private unnamed_addr constant [1 x i8] c"\00", align 1

; External functions

; Function attributes: noreturn "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8"
declare void @abort() local_unnamed_addr #2

; Function attributes: nofree nounwind
declare noundef i32 @puts(ptr noundef) local_unnamed_addr #1
attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fix-cortex-a53-835769,+neon,+outline-atomics,+v8a" uwtable willreturn }
attributes #1 = { nofree nounwind }
attributes #2 = { noreturn "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fix-cortex-a53-835769,+neon,+outline-atomics,+v8a" }

; Metadata
!llvm.module.flags = !{!0, !1, !7, !8, !9, !10}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!llvm.ident = !{!2}
!2 = !{!"Xamarin.Android remotes/origin/release/8.0.1xx @ f1b7113872c8db3dfee70d11925e81bb752dc8d0"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{i32 1, !"branch-target-enforcement", i32 0}
!8 = !{i32 1, !"sign-return-address", i32 0}
!9 = !{i32 1, !"sign-return-address-all", i32 0}
!10 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
