.class final enum Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$VideoPreparationState;
.super Ljava/lang/Enum;
.source "NativeXVideoPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "VideoPreparationState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$VideoPreparationState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$VideoPreparationState;

.field public static final enum NONE:Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$VideoPreparationState;

.field public static final enum PREPARED:Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$VideoPreparationState;

.field public static final enum PREPARING:Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$VideoPreparationState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 769
    new-instance v0, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$VideoPreparationState;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2}, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$VideoPreparationState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$VideoPreparationState;->NONE:Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$VideoPreparationState;

    .line 770
    new-instance v0, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$VideoPreparationState;

    const-string v1, "PREPARING"

    invoke-direct {v0, v1, v3}, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$VideoPreparationState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$VideoPreparationState;->PREPARING:Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$VideoPreparationState;

    .line 771
    new-instance v0, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$VideoPreparationState;

    const-string v1, "PREPARED"

    invoke-direct {v0, v1, v4}, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$VideoPreparationState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$VideoPreparationState;->PREPARED:Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$VideoPreparationState;

    .line 768
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$VideoPreparationState;

    sget-object v1, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$VideoPreparationState;->NONE:Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$VideoPreparationState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$VideoPreparationState;->PREPARING:Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$VideoPreparationState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$VideoPreparationState;->PREPARED:Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$VideoPreparationState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$VideoPreparationState;->$VALUES:[Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$VideoPreparationState;

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
    .line 768
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$VideoPreparationState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 768
    const-class v0, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$VideoPreparationState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$VideoPreparationState;

    return-object v0
.end method

.method public static values()[Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$VideoPreparationState;
    .locals 1

    .prologue
    .line 768
    sget-object v0, Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$VideoPreparationState;->$VALUES:[Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$VideoPreparationState;

    invoke-virtual {v0}, [Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$VideoPreparationState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fusepowered/nx/videoplayer/NativeXVideoPlayer$VideoPreparationState;

    return-object v0
.end method
