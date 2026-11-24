#指定代码的压缩级别
-optimizationpasses 5

#混淆时不会产生形形色色的类名
-dontusemixedcaseclassnames

#指定不去忽略非公共的库类
-dontskipnonpubliclibraryclasses

#不预校验
-dontpreverify

#不优化输入的类文件
-dontoptimize

-ignorewarnings

-verbose

#优化
-optimizations !code/simplification/arithmetic,!field/*,!class/merging/*

#保护内部类
-keepattributes Exceptions,InnerClasses,Signature,Deprecated,SourceFile,LineNumberTable,*Annotation*,EnclosingMethod

#忽略警告
-ignorewarnings

# 枚举类不能被混淆
-keepclassmembers enum * {
public static **[] values();
public static ** valueOf(java.lang.String);
}

################Canary#################
-dontwarn com.squareup.haha.guava.**
-dontwarn com.squareup.haha.perflib.**
-dontwarn com.squareup.haha.trove.**
-dontwarn com.squareup.leakcanary.**
-keep class com.squareup.haha.** { *; }
-keep class com.squareup.leakcanary.** { *; }

# bugly
-dontwarn com.tencent.bugly.**
-keep public class com.tencent.bugly.**{*;}

# support-v4
-dontwarn android.support.v4.**
-keep class android.support.v4.** { *; }
-keep interface android.support.v4.** { *; }
-keep public class * extends android.support.v4.**

# WindMillAd
-dontwarn com.sigmob.**
-keep class com.sigmob.**{ *;}
-keep interface com.sigmob.**{ *;}

-dontwarn com.czhj.**
-keep class com.czhj.**{ *;}
-keep interface com.czhj.**{ *;}
-keep class com.tan.**{ *;}

-dontwarn com.windmill.**
-keep class com.windmill.**.**{*;}
-keep interface com.windmill.**{ *;}

#oaid
-dontwarn com.bun.**
-keep class com.bun.** {*;}
-keep class a.**{*;}
-keep class XI.CA.XI.**{*;}
-keep class XI.K0.XI.**{*;}
-keep class XI.XI.K0.**{*;}
-keep class XI.vs.K0.**{*;}
-keep class XI.xo.XI.XI.**{*;}
-keep class com.asus.msa.SupplementaryDID.**{*;}
-keep class com.asus.msa.sdid.**{*;}
-keep class com.huawei.hms.ads.identifier.**{*;}
-keep class com.samsung.android.deviceidservice.**{*;}
-keep class com.zui.opendeviceidlibrary.**{*;}
-keep class org.json.**{*;}
-keep public class com.netease.nis.sdkwrapper.Utils {public <methods>;}

-dontwarn com.tencent.bugly.**
-keep public class com.tencent.bugly.**{*;}

#csj
-keep class com.bytedance.sdk.openadsdk.** { *; }
-keep public interface com.bytedance.sdk.openadsdk.downloadnew.** {*;}
-keep class com.pgl.sys.ces.* {*;}

#gdt
-keep class com.qq.e.** {
    public protected *;
}

#tapjoy
-keep class com.tapjoy.** { *; }
-keep class com.moat.** { *; }
-keepattributes JavascriptInterface
-keepattributes *Annotation*
-keep class * extends java.util.ListResourceBundle {
protected Object[][] getContents();
}
-keep public class com.google.android.gms.common.internal.safeparcel.SafeParcelable {
public static final *** NULL;
}
-keepnames @com.google.android.gms.common.annotation.KeepName class *
-keepclassmembernames class * {
@com.google.android.gms.common.annotation.KeepName *;
}
-keepnames class * implements android.os.Parcelable {
public static final ** CREATOR;
}
-keep class com.google.android.gms.ads.identifier.** { *; }
-dontwarn com.tapjoy.**

#kuaishou
-keep class org.chromium.** {*;}
-keep class org.chromium.** { *; }
-keep class aegon.chrome.** { *; }
-keep class com.kwai.**{ *; }
-dontwarn com.kwai.**
-dontwarn com.kwad.**
-dontwarn com.ksad.**
-dontwarn aegon.chrome.**

#mtg
-keepattributes Signature
-keepattributes *Annotation*
-keep class com.mbridge.** {*; }
-keep interface com.mbridge.** {*; }
-keep interface androidx.** { *; }
-keep class androidx.** { *; }
-keep public class * extends androidx.** { *; }
-dontwarn com.mbridge.**
-keep class **.R$* { public static final int mbridge*; }

#AdScope
-dontwarn com.beizi.fusion.**
-dontwarn com.beizi.ad.**
-keep class com.beizi.fusion.** {*; }
-keep class com.beizi.ad.** {*; }

# x5
-dontwarn dalvik.**
-dontwarn com.tencent.smtt.**
-keep class com.tencent.smtt.** {
    *;
}
-keep class com.tencent.tbs.** {
    *;
}

# qapm
-keep class com.tencent.qapmsdk.**{*;}
-keep class okhttp3.** { *; }

#TapADN
-dontwarn com.tapsdk.**
-dontwarn com.tapadn.**
-keep class com.tapsdk.** {*; }
-keep class com.tapadn.** {*; }

#baidu
-ignorewarnings
-dontwarn com.baidu.mobads.sdk.api.**
-keepclassmembers class * extends android.app.Activity {
   public void *(android.view.View);
}

-keepclassmembers enum * {
    public static **[] values();
    public static ** valueOf(java.lang.String);
}

-keep class com.baidu.mobads.** { *; }
-keep class com.style.widget.** {*;}
-keep class com.component.** {*;}
-keep class com.baidu.ad.magic.flute.** {*;}
-keep class com.baidu.mobstat.forbes.** {*;}

#HuaWei
-keep class com.huawei.openalliance.ad.**{*;}

#HuaWei Ads Lite
-keep class com.huawei.openalliance.ad.** { *; }
-keep class com.huawei.hms.ads.** { *; }

#AGD
-dontwarn com.huawei.appgallery.agd.**
-keep class com.huawei.appgallery.agd.** {*;}
-keep interface com.huawei.appgallery.agd.**{ *;}

#oppoadn
-keep class com.opos.** { *;}
-keep class com.heytap.** { *;}
-keep class com.heytap.msp.mobad.** { *;}
-keep class com.heytap.openid.** {*;}

-keep class okio.**{ *; }

-keeppackagenames com.heytap.nearx.tapplugin

#honor
-keep class com.hihonor.ads.** {*;}
-keep class com.hihonor.adsdk.** {*;}

#vivo
-keepattributes SourceFile,LineNumberTable
-dontwarn com.squareup.okhttp.**
-dontwarn okhttp3.**
-keep class com.vivo.*.** { *; }
-dontwarn com.bytedance.article.common.nativecrash.NativeCrashInit
-keep class com.bytedance.sdk.openadsdk.** {*;}
-keep public interface com.bytedance.sdk.openadsdk.downloadnew.** {*;}
-keep class com.pgl.sys.ces.* {*;}
-keep class com.qq.e.** {
public protected *;
}
-keep class android.support.v4.**{
public *;
}
-keep class android.support.v7.widget.** {*;}
-dontwarn com.vivo.secboxsdk.**
-keep class com.vivo.secboxsdk.SecBoxCipherException { *; }
-keep class com.vivo.secboxsdk.jni.SecBoxNative { *; }
-keep class com.vivo.secboxsdk.BuildConfig { *; }
-keep class com.kwad.sdk.** { *;}
-keep class com.ksad.download.** { *;}
-keep class com.kwai.filedownloader.** { *;}

#meishu
#GSON
-keepattributes Signature
-keepattributes *Annotation*
-dontwarn sun.misc.**
-keep class com.google.gson.examples.android.model.** { <fields>; }
-keep class * implements com.google.gson.TypeAdapterFactory
-keep class * implements com.google.gson.JsonSerializer
-keep class * implements com.google.gson.JsonDeserializer
-keepclassmembers,allowobfuscation class * {
    @com.google.gson.annotations.SerializedName <fields>;
}
#msad
-keep class com.meishu.sdk.** { *; }

#billowlink
-dontwarn com.billow.**
-keep class com.billow.**{ *;}
-keep interface com.billow.**{ *;}

#Octopus
-dontwarn com.octopus.**
-keep class com.octopus.** {*;}

#jutui
-dontwarn com.jutui.**
-keep class com.jutui.** {*;}

#wangmai
-dontwarn com.wangmai.**
-keep class com.wangmai.** {*;}

#fanwei
-dontwarn com.ptg.**
-keep class com.ptg.** {*;}

#kuying
-dontwarn com.smartdigimkttech.**
-keep class com.smartdigimkttech.** {*;}
-keep interface com.smartdigimkttech.** {*;}

#buluken
-dontwarn com.adprof.sdk.**
-keep class com.adprof.sdk.** {*;}
-keep interface com.adprof.**{ *;}