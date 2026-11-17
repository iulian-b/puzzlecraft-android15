.class public Lcom/fusepowered/l1/LoopMeError;
.super Ljava/lang/Object;
.source "LoopMeError.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private final mMessage:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 5
    const-class v0, Lcom/fusepowered/l1/LoopMeError;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/fusepowered/l1/LoopMeError;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "mes"    # Ljava/lang/String;

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    if-nez p1, :cond_0

    .line 11
    sget-object v0, Lcom/fusepowered/l1/LoopMeError;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Wrong parameter"

    sget-object v2, Lcom/fusepowered/l1/LogLevel;->ERROR:Lcom/fusepowered/l1/LogLevel;

    invoke-static {v0, v1, v2}, Lcom/fusepowered/l1/Utils;->log(Ljava/lang/String;Ljava/lang/String;Lcom/fusepowered/l1/LogLevel;)V

    .line 12
    const-string v0, ""

    iput-object v0, p0, Lcom/fusepowered/l1/LoopMeError;->mMessage:Ljava/lang/String;

    .line 16
    :goto_0
    return-void

    .line 14
    :cond_0
    iput-object p1, p0, Lcom/fusepowered/l1/LoopMeError;->mMessage:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/fusepowered/l1/LoopMeError;->mMessage:Ljava/lang/String;

    return-object v0
.end method
