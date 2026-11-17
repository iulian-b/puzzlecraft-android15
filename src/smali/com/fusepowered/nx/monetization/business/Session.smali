.class public Lcom/fusepowered/nx/monetization/business/Session;
.super Ljava/lang/Object;
.source "Session.java"


# instance fields
.field private sessionId:Ljava/lang/String;
    .annotation runtime Lcom/fusepowered/nx/gson/annotations/SerializedName;
        value = "SessionId"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 42
    if-eqz p1, :cond_0

    .line 43
    instance-of v1, p1, Lcom/fusepowered/nx/monetization/business/Session;

    if-eqz v1, :cond_0

    .line 44
    invoke-virtual {p0}, Lcom/fusepowered/nx/monetization/business/Session;->getSessionId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 45
    check-cast p1, Lcom/fusepowered/nx/monetization/business/Session;

    .end local p1    # "o":Ljava/lang/Object;
    invoke-virtual {p1}, Lcom/fusepowered/nx/monetization/business/Session;->getSessionId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 46
    const/4 v0, 0x1

    .line 53
    :cond_0
    :goto_0
    return v0

    .line 50
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_1
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/business/Session;->sessionId:Ljava/lang/String;

    check-cast p1, Lcom/fusepowered/nx/monetization/business/Session;

    .end local p1    # "o":Ljava/lang/Object;
    invoke-virtual {p1}, Lcom/fusepowered/nx/monetization/business/Session;->getSessionId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public getSessionId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/business/Session;->sessionId:Ljava/lang/String;

    return-object v0
.end method

.method public setSessionId(Ljava/lang/String;)V
    .locals 0
    .param p1, "sessionId"    # Ljava/lang/String;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/fusepowered/nx/monetization/business/Session;->sessionId:Ljava/lang/String;

    .line 37
    return-void
.end method
