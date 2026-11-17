.class public Lcom/fusepowered/l1/ExpirationTimer;
.super Landroid/os/CountDownTimer;
.source "ExpirationTimer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fusepowered/l1/ExpirationTimer$Listener;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mListener:Lcom/fusepowered/l1/ExpirationTimer$Listener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 7
    const-class v0, Lcom/fusepowered/l1/ExpirationTimer;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/fusepowered/l1/ExpirationTimer;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(JLcom/fusepowered/l1/ExpirationTimer$Listener;)V
    .locals 3
    .param p1, "millisInFuture"    # J
    .param p3, "listener"    # Lcom/fusepowered/l1/ExpirationTimer$Listener;

    .prologue
    .line 16
    const-wide/32 v0, 0xea60

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/os/CountDownTimer;-><init>(JJ)V

    .line 17
    if-nez p3, :cond_0

    .line 18
    sget-object v0, Lcom/fusepowered/l1/ExpirationTimer;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Listener should not be null"

    sget-object v2, Lcom/fusepowered/l1/LogLevel;->DEBUG:Lcom/fusepowered/l1/LogLevel;

    invoke-static {v0, v1, v2}, Lcom/fusepowered/l1/Utils;->log(Ljava/lang/String;Ljava/lang/String;Lcom/fusepowered/l1/LogLevel;)V

    .line 20
    :cond_0
    sget-object v0, Lcom/fusepowered/l1/ExpirationTimer;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Start schedule expiration"

    sget-object v2, Lcom/fusepowered/l1/LogLevel;->DEBUG:Lcom/fusepowered/l1/LogLevel;

    invoke-static {v0, v1, v2}, Lcom/fusepowered/l1/Utils;->log(Ljava/lang/String;Ljava/lang/String;Lcom/fusepowered/l1/LogLevel;)V

    .line 21
    iput-object p3, p0, Lcom/fusepowered/l1/ExpirationTimer;->mListener:Lcom/fusepowered/l1/ExpirationTimer$Listener;

    .line 22
    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/fusepowered/l1/ExpirationTimer;->mListener:Lcom/fusepowered/l1/ExpirationTimer$Listener;

    if-eqz v0, :cond_0

    .line 27
    iget-object v0, p0, Lcom/fusepowered/l1/ExpirationTimer;->mListener:Lcom/fusepowered/l1/ExpirationTimer$Listener;

    invoke-interface {v0}, Lcom/fusepowered/l1/ExpirationTimer$Listener;->onExpired()V

    .line 29
    :cond_0
    return-void
.end method

.method public onTick(J)V
    .locals 0
    .param p1, "millisUntilFinished"    # J

    .prologue
    .line 33
    return-void
.end method
