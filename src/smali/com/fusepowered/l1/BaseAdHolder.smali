.class public Lcom/fusepowered/l1/BaseAdHolder;
.super Ljava/lang/Object;
.source "BaseAdHolder.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;

.field private static mBaseLoopMe:Lcom/fusepowered/l1/BaseAd;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 5
    const-class v0, Lcom/fusepowered/l1/BaseAdHolder;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/fusepowered/l1/BaseAdHolder;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clear()V
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x0

    sput-object v0, Lcom/fusepowered/l1/BaseAdHolder;->mBaseLoopMe:Lcom/fusepowered/l1/BaseAd;

    .line 23
    return-void
.end method

.method public static get()Lcom/fusepowered/l1/BaseAd;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/fusepowered/l1/BaseAdHolder;->mBaseLoopMe:Lcom/fusepowered/l1/BaseAd;

    return-object v0
.end method

.method public static put(Lcom/fusepowered/l1/BaseAd;)V
    .locals 3
    .param p0, "baseLoopme"    # Lcom/fusepowered/l1/BaseAd;

    .prologue
    .line 10
    if-nez p0, :cond_0

    .line 11
    sget-object v0, Lcom/fusepowered/l1/BaseAdHolder;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Wrong parameter"

    sget-object v2, Lcom/fusepowered/l1/LogLevel;->ERROR:Lcom/fusepowered/l1/LogLevel;

    invoke-static {v0, v1, v2}, Lcom/fusepowered/l1/Utils;->log(Ljava/lang/String;Ljava/lang/String;Lcom/fusepowered/l1/LogLevel;)V

    .line 15
    :goto_0
    return-void

    .line 14
    :cond_0
    sput-object p0, Lcom/fusepowered/l1/BaseAdHolder;->mBaseLoopMe:Lcom/fusepowered/l1/BaseAd;

    goto :goto_0
.end method
