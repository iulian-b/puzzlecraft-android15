.class public Lcom/fusepowered/l1/StaticParams;
.super Ljava/lang/Object;
.source "StaticParams.java"


# static fields
.field public static final DEFAULT_LOCATION_PRECISION:I = 0x6

.field public static final INTERSTITIAL_MAX_CLOSE_BTN_DELAY:I = 0xea60

.field public static final INTERSTITIAL_MIN_CLOSE_BTN_DELAY:I = 0x0

.field public static final LOOPME_WEBVIEW_CLOSE:Ljava/lang/String; = "loopme://webview/close"

.field public static final LOOPME_WEBVIEW_FAIL:Ljava/lang/String; = "loopme://webview/fail"

.field public static final LOOPME_WEBVIEW_SUCCESS:Ljava/lang/String; = "loopme://webview/success"

.field public static final LOOPME_WEBVIEW_VIBRATE:Ljava/lang/String; = "loopme://webview/vibrate"

.field public static final ORIENTATION_LAND:Ljava/lang/String; = "landscape"

.field public static final ORIENTATION_PORT:Ljava/lang/String; = "portrait"

.field public static final SDK_VERSION:Ljava/lang/String; = "4.0.5"

.field public static URL_MOBILE:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 7
    const-string v0, "loopme.me/api/loopme/ads/v3"

    sput-object v0, Lcom/fusepowered/l1/StaticParams;->URL_MOBILE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
