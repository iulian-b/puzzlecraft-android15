.class public Lcom/fusepowered/nx/common/StringConstants;
.super Ljava/lang/Object;
.source "StringConstants.java"


# static fields
.field public static final ACTION_DEEPLINK:Ljava/lang/String; = "com.fusepowered.nx.action.DEEPLINK"

.field public static final EXTRA_VIDEO_URL:Ljava/lang/String; = "VideoURL"

.field public static final MESSAGE_DIALOG_BUTTON_TEXT:Ljava/lang/String; = "Ok"

.field public static final PACKAGE_NAME:Ljava/lang/String; = "package_name"

.field public static final SCENE_NAME:Ljava/lang/String; = "scene_name"

.field public static final stringsUsed:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/fusepowered/nx/common/StringConstants;->stringsUsed:Ljava/util/HashMap;

    .line 41
    sget-object v0, Lcom/fusepowered/nx/common/StringConstants;->stringsUsed:Ljava/util/HashMap;

    const-string v1, "complex_video_player_controls_hint"

    const-string v2, "Tap to display \n video controls"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    sget-object v0, Lcom/fusepowered/nx/common/StringConstants;->stringsUsed:Ljava/util/HashMap;

    const-string v1, "complex_video_cannot_be_played"

    const-string v2, "This video cannot be played"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    sget-object v0, Lcom/fusepowered/nx/common/StringConstants;->stringsUsed:Ljava/util/HashMap;

    const-string v1, "complex_video_server_error"

    const-string v2, "Server error."

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    sget-object v0, Lcom/fusepowered/nx/common/StringConstants;->stringsUsed:Ljava/util/HashMap;

    const-string v1, "complex_video_unknown_error"

    const-string v2, "Unknown error."

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    sget-object v0, Lcom/fusepowered/nx/common/StringConstants;->stringsUsed:Ljava/util/HashMap;

    const-string v1, "complex_video_media_player_error"

    const-string v2, "Media Player Error"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    sget-object v0, Lcom/fusepowered/nx/common/StringConstants;->stringsUsed:Ljava/util/HashMap;

    const-string v1, "no_network_connectivity"

    const-string v2, "No Network Connectivity"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    sget-object v0, Lcom/fusepowered/nx/common/StringConstants;->stringsUsed:Ljava/util/HashMap;

    const-string v1, "no_network_dialog_connect"

    const-string v2, "Connect"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    sget-object v0, Lcom/fusepowered/nx/common/StringConstants;->stringsUsed:Ljava/util/HashMap;

    const-string v1, "progress_dialog_loading"

    const-string v2, "Loading, please wait..."

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
