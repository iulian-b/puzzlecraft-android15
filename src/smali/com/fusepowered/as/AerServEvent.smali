.class public final enum Lcom/fusepowered/as/AerServEvent;
.super Ljava/lang/Enum;
.source "AerServEvent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/fusepowered/as/AerServEvent;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/fusepowered/as/AerServEvent;

.field public static final enum AD_CLICKED:Lcom/fusepowered/as/AerServEvent;

.field public static final enum AD_COMPLETED:Lcom/fusepowered/as/AerServEvent;

.field public static final enum AD_DISMISSED:Lcom/fusepowered/as/AerServEvent;

.field public static final enum AD_FAILED:Lcom/fusepowered/as/AerServEvent;

.field public static final enum AD_IMPRESSION:Lcom/fusepowered/as/AerServEvent;

.field public static final enum AD_LOADED:Lcom/fusepowered/as/AerServEvent;

.field public static final enum MRAID_CLOSE:Lcom/fusepowered/as/AerServEvent;

.field public static final enum MRAID_CREATE_CALENDAR_EVENT:Lcom/fusepowered/as/AerServEvent;

.field public static final enum MRAID_EXPAND:Lcom/fusepowered/as/AerServEvent;

.field public static final enum MRAID_OPEN:Lcom/fusepowered/as/AerServEvent;

.field public static final enum MRAID_PLAY_VIDEO:Lcom/fusepowered/as/AerServEvent;

.field public static final enum MRAID_READY:Lcom/fusepowered/as/AerServEvent;

.field public static final enum MRAID_RESIZE:Lcom/fusepowered/as/AerServEvent;

.field public static final enum MRAID_STORE_PICTURE:Lcom/fusepowered/as/AerServEvent;

.field public static final enum PRELOAD_READY:Lcom/fusepowered/as/AerServEvent;

.field public static final enum VC_READY:Lcom/fusepowered/as/AerServEvent;

.field public static final enum VC_REWARDED:Lcom/fusepowered/as/AerServEvent;

.field public static final enum VIDEO_25:Lcom/fusepowered/as/AerServEvent;

.field public static final enum VIDEO_50:Lcom/fusepowered/as/AerServEvent;

.field public static final enum VIDEO_75:Lcom/fusepowered/as/AerServEvent;

.field public static final enum VIDEO_COMPLETED:Lcom/fusepowered/as/AerServEvent;

.field public static final enum VIDEO_START:Lcom/fusepowered/as/AerServEvent;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 10
    new-instance v0, Lcom/fusepowered/as/AerServEvent;

    const-string v1, "VIDEO_START"

    invoke-direct {v0, v1, v3}, Lcom/fusepowered/as/AerServEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fusepowered/as/AerServEvent;->VIDEO_START:Lcom/fusepowered/as/AerServEvent;

    .line 15
    new-instance v0, Lcom/fusepowered/as/AerServEvent;

    const-string v1, "VIDEO_25"

    invoke-direct {v0, v1, v4}, Lcom/fusepowered/as/AerServEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fusepowered/as/AerServEvent;->VIDEO_25:Lcom/fusepowered/as/AerServEvent;

    .line 20
    new-instance v0, Lcom/fusepowered/as/AerServEvent;

    const-string v1, "VIDEO_50"

    invoke-direct {v0, v1, v5}, Lcom/fusepowered/as/AerServEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fusepowered/as/AerServEvent;->VIDEO_50:Lcom/fusepowered/as/AerServEvent;

    .line 25
    new-instance v0, Lcom/fusepowered/as/AerServEvent;

    const-string v1, "VIDEO_75"

    invoke-direct {v0, v1, v6}, Lcom/fusepowered/as/AerServEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fusepowered/as/AerServEvent;->VIDEO_75:Lcom/fusepowered/as/AerServEvent;

    .line 30
    new-instance v0, Lcom/fusepowered/as/AerServEvent;

    const-string v1, "VIDEO_COMPLETED"

    invoke-direct {v0, v1, v7}, Lcom/fusepowered/as/AerServEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fusepowered/as/AerServEvent;->VIDEO_COMPLETED:Lcom/fusepowered/as/AerServEvent;

    .line 35
    new-instance v0, Lcom/fusepowered/as/AerServEvent;

    const-string v1, "PRELOAD_READY"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/fusepowered/as/AerServEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fusepowered/as/AerServEvent;->PRELOAD_READY:Lcom/fusepowered/as/AerServEvent;

    .line 40
    new-instance v0, Lcom/fusepowered/as/AerServEvent;

    const-string v1, "AD_LOADED"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/fusepowered/as/AerServEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fusepowered/as/AerServEvent;->AD_LOADED:Lcom/fusepowered/as/AerServEvent;

    .line 45
    new-instance v0, Lcom/fusepowered/as/AerServEvent;

    const-string v1, "AD_IMPRESSION"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/fusepowered/as/AerServEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fusepowered/as/AerServEvent;->AD_IMPRESSION:Lcom/fusepowered/as/AerServEvent;

    .line 50
    new-instance v0, Lcom/fusepowered/as/AerServEvent;

    const-string v1, "AD_CLICKED"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/fusepowered/as/AerServEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fusepowered/as/AerServEvent;->AD_CLICKED:Lcom/fusepowered/as/AerServEvent;

    .line 55
    new-instance v0, Lcom/fusepowered/as/AerServEvent;

    const-string v1, "AD_COMPLETED"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/fusepowered/as/AerServEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fusepowered/as/AerServEvent;->AD_COMPLETED:Lcom/fusepowered/as/AerServEvent;

    .line 60
    new-instance v0, Lcom/fusepowered/as/AerServEvent;

    const-string v1, "AD_DISMISSED"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/fusepowered/as/AerServEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fusepowered/as/AerServEvent;->AD_DISMISSED:Lcom/fusepowered/as/AerServEvent;

    .line 65
    new-instance v0, Lcom/fusepowered/as/AerServEvent;

    const-string v1, "AD_FAILED"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/fusepowered/as/AerServEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fusepowered/as/AerServEvent;->AD_FAILED:Lcom/fusepowered/as/AerServEvent;

    .line 70
    new-instance v0, Lcom/fusepowered/as/AerServEvent;

    const-string v1, "VC_READY"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/fusepowered/as/AerServEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fusepowered/as/AerServEvent;->VC_READY:Lcom/fusepowered/as/AerServEvent;

    .line 75
    new-instance v0, Lcom/fusepowered/as/AerServEvent;

    const-string v1, "VC_REWARDED"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/fusepowered/as/AerServEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fusepowered/as/AerServEvent;->VC_REWARDED:Lcom/fusepowered/as/AerServEvent;

    .line 78
    new-instance v0, Lcom/fusepowered/as/AerServEvent;

    const-string v1, "MRAID_READY"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/fusepowered/as/AerServEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fusepowered/as/AerServEvent;->MRAID_READY:Lcom/fusepowered/as/AerServEvent;

    .line 79
    new-instance v0, Lcom/fusepowered/as/AerServEvent;

    const-string v1, "MRAID_CREATE_CALENDAR_EVENT"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/fusepowered/as/AerServEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fusepowered/as/AerServEvent;->MRAID_CREATE_CALENDAR_EVENT:Lcom/fusepowered/as/AerServEvent;

    .line 80
    new-instance v0, Lcom/fusepowered/as/AerServEvent;

    const-string v1, "MRAID_CLOSE"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/fusepowered/as/AerServEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fusepowered/as/AerServEvent;->MRAID_CLOSE:Lcom/fusepowered/as/AerServEvent;

    .line 81
    new-instance v0, Lcom/fusepowered/as/AerServEvent;

    const-string v1, "MRAID_EXPAND"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lcom/fusepowered/as/AerServEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fusepowered/as/AerServEvent;->MRAID_EXPAND:Lcom/fusepowered/as/AerServEvent;

    .line 82
    new-instance v0, Lcom/fusepowered/as/AerServEvent;

    const-string v1, "MRAID_OPEN"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lcom/fusepowered/as/AerServEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fusepowered/as/AerServEvent;->MRAID_OPEN:Lcom/fusepowered/as/AerServEvent;

    .line 83
    new-instance v0, Lcom/fusepowered/as/AerServEvent;

    const-string v1, "MRAID_PLAY_VIDEO"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Lcom/fusepowered/as/AerServEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fusepowered/as/AerServEvent;->MRAID_PLAY_VIDEO:Lcom/fusepowered/as/AerServEvent;

    .line 84
    new-instance v0, Lcom/fusepowered/as/AerServEvent;

    const-string v1, "MRAID_RESIZE"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Lcom/fusepowered/as/AerServEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fusepowered/as/AerServEvent;->MRAID_RESIZE:Lcom/fusepowered/as/AerServEvent;

    .line 85
    new-instance v0, Lcom/fusepowered/as/AerServEvent;

    const-string v1, "MRAID_STORE_PICTURE"

    const/16 v2, 0x15

    invoke-direct {v0, v1, v2}, Lcom/fusepowered/as/AerServEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fusepowered/as/AerServEvent;->MRAID_STORE_PICTURE:Lcom/fusepowered/as/AerServEvent;

    .line 6
    const/16 v0, 0x16

    new-array v0, v0, [Lcom/fusepowered/as/AerServEvent;

    sget-object v1, Lcom/fusepowered/as/AerServEvent;->VIDEO_START:Lcom/fusepowered/as/AerServEvent;

    aput-object v1, v0, v3

    sget-object v1, Lcom/fusepowered/as/AerServEvent;->VIDEO_25:Lcom/fusepowered/as/AerServEvent;

    aput-object v1, v0, v4

    sget-object v1, Lcom/fusepowered/as/AerServEvent;->VIDEO_50:Lcom/fusepowered/as/AerServEvent;

    aput-object v1, v0, v5

    sget-object v1, Lcom/fusepowered/as/AerServEvent;->VIDEO_75:Lcom/fusepowered/as/AerServEvent;

    aput-object v1, v0, v6

    sget-object v1, Lcom/fusepowered/as/AerServEvent;->VIDEO_COMPLETED:Lcom/fusepowered/as/AerServEvent;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/fusepowered/as/AerServEvent;->PRELOAD_READY:Lcom/fusepowered/as/AerServEvent;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/fusepowered/as/AerServEvent;->AD_LOADED:Lcom/fusepowered/as/AerServEvent;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/fusepowered/as/AerServEvent;->AD_IMPRESSION:Lcom/fusepowered/as/AerServEvent;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/fusepowered/as/AerServEvent;->AD_CLICKED:Lcom/fusepowered/as/AerServEvent;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/fusepowered/as/AerServEvent;->AD_COMPLETED:Lcom/fusepowered/as/AerServEvent;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/fusepowered/as/AerServEvent;->AD_DISMISSED:Lcom/fusepowered/as/AerServEvent;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/fusepowered/as/AerServEvent;->AD_FAILED:Lcom/fusepowered/as/AerServEvent;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/fusepowered/as/AerServEvent;->VC_READY:Lcom/fusepowered/as/AerServEvent;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/fusepowered/as/AerServEvent;->VC_REWARDED:Lcom/fusepowered/as/AerServEvent;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/fusepowered/as/AerServEvent;->MRAID_READY:Lcom/fusepowered/as/AerServEvent;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/fusepowered/as/AerServEvent;->MRAID_CREATE_CALENDAR_EVENT:Lcom/fusepowered/as/AerServEvent;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/fusepowered/as/AerServEvent;->MRAID_CLOSE:Lcom/fusepowered/as/AerServEvent;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/fusepowered/as/AerServEvent;->MRAID_EXPAND:Lcom/fusepowered/as/AerServEvent;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/fusepowered/as/AerServEvent;->MRAID_OPEN:Lcom/fusepowered/as/AerServEvent;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/fusepowered/as/AerServEvent;->MRAID_PLAY_VIDEO:Lcom/fusepowered/as/AerServEvent;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/fusepowered/as/AerServEvent;->MRAID_RESIZE:Lcom/fusepowered/as/AerServEvent;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/fusepowered/as/AerServEvent;->MRAID_STORE_PICTURE:Lcom/fusepowered/as/AerServEvent;

    aput-object v2, v0, v1

    sput-object v0, Lcom/fusepowered/as/AerServEvent;->$VALUES:[Lcom/fusepowered/as/AerServEvent;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fusepowered/as/AerServEvent;
    .locals 1

    .prologue
    .line 6
    const-class v0, Lcom/fusepowered/as/AerServEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/fusepowered/as/AerServEvent;

    return-object v0
.end method

.method public static values()[Lcom/fusepowered/as/AerServEvent;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/fusepowered/as/AerServEvent;->$VALUES:[Lcom/fusepowered/as/AerServEvent;

    invoke-virtual {v0}, [Lcom/fusepowered/as/AerServEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fusepowered/as/AerServEvent;

    return-object v0
.end method
