.class public final enum Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidAction;
.super Ljava/lang/Enum;
.source "MraidAction.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidAction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidAction;

.field public static final enum ADD_EVENT_LISTENER:Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidAction;

.field public static final enum CLOSE:Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidAction;

.field public static final enum CREATE_CALENDAR_EVENT:Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidAction;

.field public static final enum EXPAND:Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidAction;

.field public static final enum GET_CURRENT_POSITION:Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidAction;

.field public static final enum GET_DEFAULT_POSITION:Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidAction;

.field public static final enum GET_EXPAND_PROPERTIES:Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidAction;

.field public static final enum GET_MAX_SIZE:Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidAction;

.field public static final enum GET_PLACEMENT_TYPE:Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidAction;

.field public static final enum GET_RESIZE_PROPERTIES:Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidAction;

.field public static final enum GET_SCREEN_SIZE:Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidAction;

.field public static final enum GET_STATE:Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidAction;

.field public static final enum GET_VERSION:Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidAction;

.field public static final enum IS_VIEWABLE:Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidAction;

.field public static final enum OPEN:Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidAction;

.field public static final enum PLAY_VIDEO:Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidAction;

.field public static final enum REMOVE_EVENT_LISTENER:Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidAction;

.field public static final enum RESIZE:Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidAction;

.field public static final enum SET_EXPAND_PROPERTIES:Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidAction;

.field public static final enum SET_ORIENTATION_PROPERTIES:Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidAction;

.field public static final enum SET_RESIZE_PROPERTIES:Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidAction;

.field public static final enum STORE_PICTURE:Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidAction;

.field public static final enum SUPPORTS:Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidAction;

.field public static final enum USE_CUSTOM_CLOSE:Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidAction;


# instance fields
.field private name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 9
    new-instance v0, Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidAction;

    const-string v1, "ADD_EVENT_LISTENER"

    const-string v2, "addEventListener"

    invoke-direct {v0, v1, v4, v2}, Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidAction;->ADD_EVENT_LISTENER:Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidAction;

    .line 10
    new-instance v0, Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidAction;

    const-string v1, "CREATE_CALENDAR_EVENT"

    const-string v2, "createCalendarEvent"

    invoke-direct {v0, v1, v5, v2}, Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidAction;->CREATE_CALENDAR_EVENT:Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidAction;

    .line 11
    new-instance v0, Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidAction;

    const-string v1, "CLOSE"

    const-string v2, "close"

    invoke-direct {v0, v1, v6, v2}, Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidAction;->CLOSE:Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidAction;

    .line 12
    new-instance v0, Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidAction;

    const-string v1, "EXPAND"

    const-string v2, "expand"

    invoke-direct {v0, v1, v7, v2}, Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidAction;->EXPAND:Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidAction;

    .line 13
    new-instance v0, Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidAction;

    const-string v1, "GET_CURRENT_POSITION"

    const-string v2, "getCurrentPosition"

    invoke-direct {v0, v1, v8, v2}, Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidAction;->GET_CURRENT_POSITION:Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidAction;

    .line 14
    new-instance v0, Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidAction;

    const-string v1, "GET_DEFAULT_POSITION"

    const/4 v2, 0x5

    const-string v3, "getDefaultPosition"

    invoke-direct {v0, v1, v2, v3}, Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidAction;->GET_DEFAULT_POSITION:Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidAction;

    .line 15
    new-instance v0, Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidAction;

    const-string v1, "GET_EXPAND_PROPERTIES"

    const/4 v2, 0x6

    const-string v3, "getExpandProperties"

    invoke-direct {v0, v1, v2, v3}, Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidAction;->GET_EXPAND_PROPERTIES:Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidAction;

    .line 16
    new-instance v0, Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidAction;

    const-string v1, "GET_MAX_SIZE"

    const/4 v2, 0x7

    const-string v3, "getMaxSize"

    invoke-direct {v0, v1, v2, v3}, Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidAction;->GET_MAX_SIZE:Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidAction;

    .line 17
    new-instance v0, Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidAction;

    const-string v1, "GET_PLACEMENT_TYPE"

    const/16 v2, 0x8

    const-string v3, "getPlacementType"

    invoke-direct {v0, v1, v2, v3}, Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidAction;->GET_PLACEMENT_TYPE:Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidAction;

    .line 18
    new-instance v0, Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidAction;

    const-string v1, "GET_RESIZE_PROPERTIES"

    const/16 v2, 0x9

    const-string v3, "getResizeProperties"

    invoke-direct {v0, v1, v2, v3}, Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidAction;->GET_RESIZE_PROPERTIES:Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidAction;

    .line 19
    new-instance v0, Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidAction;

    const-string v1, "GET_SCREEN_SIZE"

    const/16 v2, 0xa

    const-string v3, "getScreenSize"

    invoke-direct {v0, v1, v2, v3}, Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidAction;->GET_SCREEN_SIZE:Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidAction;

    .line 20
    new-instance v0, Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidAction;

    const-string v1, "GET_STATE"

    const/16 v2, 0xb

    const-string v3, "getState"

    invoke-direct {v0, v1, v2, v3}, Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidAction;->GET_STATE:Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidAction;

    .line 21
    new-instance v0, Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidAction;

    const-string v1, "GET_VERSION"

    const/16 v2, 0xc

    const-string v3, "getVersion"

    invoke-direct {v0, v1, v2, v3}, Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidAction;->GET_VERSION:Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidAction;

    .line 22
    new-instance v0, Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidAction;

    const-string v1, "IS_VIEWABLE"

    const/16 v2, 0xd

    const-string v3, "isViewable"

    invoke-direct {v0, v1, v2, v3}, Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidAction;->IS_VIEWABLE:Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidAction;

    .line 23
    new-instance v0, Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidAction;

    const-string v1, "OPEN"

    const/16 v2, 0xe

    const-string v3, "open"

    invoke-direct {v0, v1, v2, v3}, Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidAction;->OPEN:Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidAction;

    .line 24
    new-instance v0, Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidAction;

    const-string v1, "PLAY_VIDEO"

    const/16 v2, 0xf

    const-string v3, "playVideo"

    invoke-direct {v0, v1, v2, v3}, Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidAction;->PLAY_VIDEO:Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidAction;

    .line 25
    new-instance v0, Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidAction;

    const-string v1, "REMOVE_EVENT_LISTENER"

    const/16 v2, 0x10

    const-string v3, "removeEventListener"

    invoke-direct {v0, v1, v2, v3}, Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidAction;->REMOVE_EVENT_LISTENER:Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidAction;

    .line 26
    new-instance v0, Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidAction;

    const-string v1, "RESIZE"

    const/16 v2, 0x11

    const-string v3, "resize"

    invoke-direct {v0, v1, v2, v3}, Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidAction;->RESIZE:Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidAction;

    .line 27
    new-instance v0, Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidAction;

    const-string v1, "SET_EXPAND_PROPERTIES"

    const/16 v2, 0x12

    const-string v3, "setExpandProperties"

    invoke-direct {v0, v1, v2, v3}, Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidAction;->SET_EXPAND_PROPERTIES:Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidAction;

    .line 28
    new-instance v0, Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidAction;

    const-string v1, "SET_RESIZE_PROPERTIES"

    const/16 v2, 0x13

    const-string v3, "setResizeProperties"

    invoke-direct {v0, v1, v2, v3}, Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidAction;->SET_RESIZE_PROPERTIES:Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidAction;

    .line 29
    new-instance v0, Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidAction;

    const-string v1, "STORE_PICTURE"

    const/16 v2, 0x14

    const-string v3, "storePicture"

    invoke-direct {v0, v1, v2, v3}, Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidAction;->STORE_PICTURE:Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidAction;

    .line 30
    new-instance v0, Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidAction;

    const-string v1, "SUPPORTS"

    const/16 v2, 0x15

    const-string v3, "supports"

    invoke-direct {v0, v1, v2, v3}, Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidAction;->SUPPORTS:Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidAction;

    .line 31
    new-instance v0, Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidAction;

    const-string v1, "USE_CUSTOM_CLOSE"

    const/16 v2, 0x16

    const-string v3, "useCustomClose"

    invoke-direct {v0, v1, v2, v3}, Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidAction;->USE_CUSTOM_CLOSE:Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidAction;

    .line 32
    new-instance v0, Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidAction;

    const-string v1, "SET_ORIENTATION_PROPERTIES"

    const/16 v2, 0x17

    const-string v3, "setOrientationProperties"

    invoke-direct {v0, v1, v2, v3}, Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidAction;->SET_ORIENTATION_PROPERTIES:Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidAction;

    .line 8
    const/16 v0, 0x18

    new-array v0, v0, [Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidAction;

    sget-object v1, Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidAction;->ADD_EVENT_LISTENER:Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidAction;

    aput-object v1, v0, v4

    sget-object v1, Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidAction;->CREATE_CALENDAR_EVENT:Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidAction;

    aput-object v1, v0, v5

    sget-object v1, Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidAction;->CLOSE:Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidAction;

    aput-object v1, v0, v6

    sget-object v1, Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidAction;->EXPAND:Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidAction;

    aput-object v1, v0, v7

    sget-object v1, Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidAction;->GET_CURRENT_POSITION:Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidAction;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidAction;->GET_DEFAULT_POSITION:Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidAction;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidAction;->GET_EXPAND_PROPERTIES:Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidAction;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidAction;->GET_MAX_SIZE:Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidAction;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidAction;->GET_PLACEMENT_TYPE:Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidAction;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidAction;->GET_RESIZE_PROPERTIES:Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidAction;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidAction;->GET_SCREEN_SIZE:Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidAction;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidAction;->GET_STATE:Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidAction;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidAction;->GET_VERSION:Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidAction;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidAction;->IS_VIEWABLE:Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidAction;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidAction;->OPEN:Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidAction;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidAction;->PLAY_VIDEO:Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidAction;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidAction;->REMOVE_EVENT_LISTENER:Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidAction;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidAction;->RESIZE:Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidAction;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidAction;->SET_EXPAND_PROPERTIES:Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidAction;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidAction;->SET_RESIZE_PROPERTIES:Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidAction;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidAction;->STORE_PICTURE:Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidAction;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidAction;->SUPPORTS:Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidAction;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidAction;->USE_CUSTOM_CLOSE:Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidAction;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidAction;->SET_ORIENTATION_PROPERTIES:Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidAction;

    aput-object v2, v0, v1

    sput-object v0, Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidAction;->$VALUES:[Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidAction;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 37
    iput-object p3, p0, Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidAction;->name:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidAction;
    .locals 1

    .prologue
    .line 8
    const-class v0, Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidAction;

    return-object v0
.end method

.method public static values()[Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidAction;
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidAction;->$VALUES:[Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidAction;

    invoke-virtual {v0}, [Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidAction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidAction;

    return-object v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidAction;->name:Ljava/lang/String;

    return-object v0
.end method
