.class public final enum Lcom/fusepowered/nx/monetization/enums/StringResources;
.super Ljava/lang/Enum;
.source "StringResources.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/fusepowered/nx/monetization/enums/StringResources;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/fusepowered/nx/monetization/enums/StringResources;

.field public static final enum NO_NETWORK_CONNECTIVITY:Lcom/fusepowered/nx/monetization/enums/StringResources;

.field public static final enum PROGRESS_DIALOG_LOADING:Lcom/fusepowered/nx/monetization/enums/StringResources;

.field public static final enum VIDEO_CANNOT_BE_PLAYED:Lcom/fusepowered/nx/monetization/enums/StringResources;

.field public static final enum VIDEO_MEDIA_PLAYER_ERROR:Lcom/fusepowered/nx/monetization/enums/StringResources;

.field public static final enum VIDEO_PLAYER_CONTROLS_HINT:Lcom/fusepowered/nx/monetization/enums/StringResources;

.field public static final enum VIDEO_SERVER_ERROR:Lcom/fusepowered/nx/monetization/enums/StringResources;

.field public static final enum VIDEO_UNKNOWN_ERROR:Lcom/fusepowered/nx/monetization/enums/StringResources;


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 25
    new-instance v0, Lcom/fusepowered/nx/monetization/enums/StringResources;

    const-string v1, "VIDEO_PLAYER_CONTROLS_HINT"

    const-string v2, "complex_video_player_controls_hint"

    invoke-direct {v0, v1, v4, v2}, Lcom/fusepowered/nx/monetization/enums/StringResources;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/fusepowered/nx/monetization/enums/StringResources;->VIDEO_PLAYER_CONTROLS_HINT:Lcom/fusepowered/nx/monetization/enums/StringResources;

    .line 26
    new-instance v0, Lcom/fusepowered/nx/monetization/enums/StringResources;

    const-string v1, "VIDEO_CANNOT_BE_PLAYED"

    const-string v2, "complex_video_cannot_be_played"

    invoke-direct {v0, v1, v5, v2}, Lcom/fusepowered/nx/monetization/enums/StringResources;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/fusepowered/nx/monetization/enums/StringResources;->VIDEO_CANNOT_BE_PLAYED:Lcom/fusepowered/nx/monetization/enums/StringResources;

    .line 27
    new-instance v0, Lcom/fusepowered/nx/monetization/enums/StringResources;

    const-string v1, "VIDEO_SERVER_ERROR"

    const-string v2, "complex_video_server_error"

    invoke-direct {v0, v1, v6, v2}, Lcom/fusepowered/nx/monetization/enums/StringResources;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/fusepowered/nx/monetization/enums/StringResources;->VIDEO_SERVER_ERROR:Lcom/fusepowered/nx/monetization/enums/StringResources;

    .line 28
    new-instance v0, Lcom/fusepowered/nx/monetization/enums/StringResources;

    const-string v1, "VIDEO_UNKNOWN_ERROR"

    const-string v2, "complex_video_unknown_error"

    invoke-direct {v0, v1, v7, v2}, Lcom/fusepowered/nx/monetization/enums/StringResources;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/fusepowered/nx/monetization/enums/StringResources;->VIDEO_UNKNOWN_ERROR:Lcom/fusepowered/nx/monetization/enums/StringResources;

    .line 29
    new-instance v0, Lcom/fusepowered/nx/monetization/enums/StringResources;

    const-string v1, "VIDEO_MEDIA_PLAYER_ERROR"

    const-string v2, "complex_video_media_player_error"

    invoke-direct {v0, v1, v8, v2}, Lcom/fusepowered/nx/monetization/enums/StringResources;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/fusepowered/nx/monetization/enums/StringResources;->VIDEO_MEDIA_PLAYER_ERROR:Lcom/fusepowered/nx/monetization/enums/StringResources;

    .line 32
    new-instance v0, Lcom/fusepowered/nx/monetization/enums/StringResources;

    const-string v1, "NO_NETWORK_CONNECTIVITY"

    const/4 v2, 0x5

    const-string v3, "no_network_connectivity"

    invoke-direct {v0, v1, v2, v3}, Lcom/fusepowered/nx/monetization/enums/StringResources;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/fusepowered/nx/monetization/enums/StringResources;->NO_NETWORK_CONNECTIVITY:Lcom/fusepowered/nx/monetization/enums/StringResources;

    .line 35
    new-instance v0, Lcom/fusepowered/nx/monetization/enums/StringResources;

    const-string v1, "PROGRESS_DIALOG_LOADING"

    const/4 v2, 0x6

    const-string v3, "progress_dialog_loading"

    invoke-direct {v0, v1, v2, v3}, Lcom/fusepowered/nx/monetization/enums/StringResources;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/fusepowered/nx/monetization/enums/StringResources;->PROGRESS_DIALOG_LOADING:Lcom/fusepowered/nx/monetization/enums/StringResources;

    .line 22
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/fusepowered/nx/monetization/enums/StringResources;

    sget-object v1, Lcom/fusepowered/nx/monetization/enums/StringResources;->VIDEO_PLAYER_CONTROLS_HINT:Lcom/fusepowered/nx/monetization/enums/StringResources;

    aput-object v1, v0, v4

    sget-object v1, Lcom/fusepowered/nx/monetization/enums/StringResources;->VIDEO_CANNOT_BE_PLAYED:Lcom/fusepowered/nx/monetization/enums/StringResources;

    aput-object v1, v0, v5

    sget-object v1, Lcom/fusepowered/nx/monetization/enums/StringResources;->VIDEO_SERVER_ERROR:Lcom/fusepowered/nx/monetization/enums/StringResources;

    aput-object v1, v0, v6

    sget-object v1, Lcom/fusepowered/nx/monetization/enums/StringResources;->VIDEO_UNKNOWN_ERROR:Lcom/fusepowered/nx/monetization/enums/StringResources;

    aput-object v1, v0, v7

    sget-object v1, Lcom/fusepowered/nx/monetization/enums/StringResources;->VIDEO_MEDIA_PLAYER_ERROR:Lcom/fusepowered/nx/monetization/enums/StringResources;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/fusepowered/nx/monetization/enums/StringResources;->NO_NETWORK_CONNECTIVITY:Lcom/fusepowered/nx/monetization/enums/StringResources;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/fusepowered/nx/monetization/enums/StringResources;->PROGRESS_DIALOG_LOADING:Lcom/fusepowered/nx/monetization/enums/StringResources;

    aput-object v2, v0, v1

    sput-object v0, Lcom/fusepowered/nx/monetization/enums/StringResources;->$VALUES:[Lcom/fusepowered/nx/monetization/enums/StringResources;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "xmlName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 40
    iput-object p3, p0, Lcom/fusepowered/nx/monetization/enums/StringResources;->name:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fusepowered/nx/monetization/enums/StringResources;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 22
    const-class v0, Lcom/fusepowered/nx/monetization/enums/StringResources;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/fusepowered/nx/monetization/enums/StringResources;

    return-object v0
.end method

.method public static values()[Lcom/fusepowered/nx/monetization/enums/StringResources;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/fusepowered/nx/monetization/enums/StringResources;->$VALUES:[Lcom/fusepowered/nx/monetization/enums/StringResources;

    invoke-virtual {v0}, [Lcom/fusepowered/nx/monetization/enums/StringResources;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fusepowered/nx/monetization/enums/StringResources;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/enums/StringResources;->name:Ljava/lang/String;

    return-object v0
.end method
