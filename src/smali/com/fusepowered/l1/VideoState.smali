.class public final enum Lcom/fusepowered/l1/VideoState;
.super Ljava/lang/Enum;
.source "VideoState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/fusepowered/l1/VideoState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/fusepowered/l1/VideoState;

.field public static final enum BROKEN:Lcom/fusepowered/l1/VideoState;

.field public static final enum BUFFERING:Lcom/fusepowered/l1/VideoState;

.field public static final enum COMPLETE:Lcom/fusepowered/l1/VideoState;

.field public static final enum PAUSED:Lcom/fusepowered/l1/VideoState;

.field public static final enum PLAYING:Lcom/fusepowered/l1/VideoState;

.field public static final enum READY:Lcom/fusepowered/l1/VideoState;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 5
    new-instance v0, Lcom/fusepowered/l1/VideoState;

    const-string v1, "BROKEN"

    invoke-direct {v0, v1, v3}, Lcom/fusepowered/l1/VideoState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fusepowered/l1/VideoState;->BROKEN:Lcom/fusepowered/l1/VideoState;

    .line 6
    new-instance v0, Lcom/fusepowered/l1/VideoState;

    const-string v1, "BUFFERING"

    invoke-direct {v0, v1, v4}, Lcom/fusepowered/l1/VideoState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fusepowered/l1/VideoState;->BUFFERING:Lcom/fusepowered/l1/VideoState;

    .line 7
    new-instance v0, Lcom/fusepowered/l1/VideoState;

    const-string v1, "READY"

    invoke-direct {v0, v1, v5}, Lcom/fusepowered/l1/VideoState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fusepowered/l1/VideoState;->READY:Lcom/fusepowered/l1/VideoState;

    .line 8
    new-instance v0, Lcom/fusepowered/l1/VideoState;

    const-string v1, "PLAYING"

    invoke-direct {v0, v1, v6}, Lcom/fusepowered/l1/VideoState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fusepowered/l1/VideoState;->PLAYING:Lcom/fusepowered/l1/VideoState;

    .line 9
    new-instance v0, Lcom/fusepowered/l1/VideoState;

    const-string v1, "PAUSED"

    invoke-direct {v0, v1, v7}, Lcom/fusepowered/l1/VideoState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fusepowered/l1/VideoState;->PAUSED:Lcom/fusepowered/l1/VideoState;

    .line 10
    new-instance v0, Lcom/fusepowered/l1/VideoState;

    const-string v1, "COMPLETE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/fusepowered/l1/VideoState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fusepowered/l1/VideoState;->COMPLETE:Lcom/fusepowered/l1/VideoState;

    .line 3
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/fusepowered/l1/VideoState;

    sget-object v1, Lcom/fusepowered/l1/VideoState;->BROKEN:Lcom/fusepowered/l1/VideoState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/fusepowered/l1/VideoState;->BUFFERING:Lcom/fusepowered/l1/VideoState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/fusepowered/l1/VideoState;->READY:Lcom/fusepowered/l1/VideoState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/fusepowered/l1/VideoState;->PLAYING:Lcom/fusepowered/l1/VideoState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/fusepowered/l1/VideoState;->PAUSED:Lcom/fusepowered/l1/VideoState;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/fusepowered/l1/VideoState;->COMPLETE:Lcom/fusepowered/l1/VideoState;

    aput-object v2, v0, v1

    sput-object v0, Lcom/fusepowered/l1/VideoState;->$VALUES:[Lcom/fusepowered/l1/VideoState;

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
    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fusepowered/l1/VideoState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 3
    const-class v0, Lcom/fusepowered/l1/VideoState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/fusepowered/l1/VideoState;

    return-object v0
.end method

.method public static values()[Lcom/fusepowered/l1/VideoState;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/fusepowered/l1/VideoState;->$VALUES:[Lcom/fusepowered/l1/VideoState;

    invoke-virtual {v0}, [Lcom/fusepowered/l1/VideoState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fusepowered/l1/VideoState;

    return-object v0
.end method
