.class public final enum Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$NativeXEvents;
.super Ljava/lang/Enum;
.source "MRAIDUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NativeXEvents"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$NativeXEvents;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$NativeXEvents;

.field public static final enum VIDEO_CANCELLED:Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$NativeXEvents;


# instance fields
.field private final event:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 400
    new-instance v0, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$NativeXEvents;

    const-string v1, "VIDEO_CANCELLED"

    const-string v2, "videoCancelled"

    invoke-direct {v0, v1, v3, v2}, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$NativeXEvents;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$NativeXEvents;->VIDEO_CANCELLED:Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$NativeXEvents;

    .line 398
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$NativeXEvents;

    sget-object v1, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$NativeXEvents;->VIDEO_CANCELLED:Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$NativeXEvents;

    aput-object v1, v0, v3

    sput-object v0, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$NativeXEvents;->$VALUES:[Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$NativeXEvents;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "e"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 405
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 406
    iput-object p3, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$NativeXEvents;->event:Ljava/lang/String;

    .line 407
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$NativeXEvents;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 398
    const-class v0, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$NativeXEvents;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$NativeXEvents;

    return-object v0
.end method

.method public static values()[Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$NativeXEvents;
    .locals 1

    .prologue
    .line 398
    sget-object v0, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$NativeXEvents;->$VALUES:[Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$NativeXEvents;

    invoke-virtual {v0}, [Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$NativeXEvents;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$NativeXEvents;

    return-object v0
.end method


# virtual methods
.method public getEvent()Ljava/lang/String;
    .locals 2

    .prologue
    .line 410
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$NativeXEvents;->event:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
