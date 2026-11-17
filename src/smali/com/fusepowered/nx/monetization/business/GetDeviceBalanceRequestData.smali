.class public Lcom/fusepowered/nx/monetization/business/GetDeviceBalanceRequestData;
.super Ljava/lang/Object;
.source "GetDeviceBalanceRequestData.java"


# instance fields
.field private session:Lcom/fusepowered/nx/monetization/business/Session;
    .annotation runtime Lcom/fusepowered/nx/gson/annotations/SerializedName;
        value = "Session"
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
.method public setSession(Lcom/fusepowered/nx/monetization/business/Session;)V
    .locals 0
    .param p1, "session"    # Lcom/fusepowered/nx/monetization/business/Session;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/fusepowered/nx/monetization/business/GetDeviceBalanceRequestData;->session:Lcom/fusepowered/nx/monetization/business/Session;

    .line 35
    return-void
.end method
