.class public abstract Lcom/fusepowered/l1/BaseAd;
.super Ljava/lang/Object;
.source "BaseAd.java"

# interfaces
.implements Lcom/fusepowered/l1/UserOptionalParams;


# static fields
.field private static LOG_TAG:Ljava/lang/String;


# instance fields
.field protected mActivity:Landroid/app/Activity;

.field protected mAdParams:Lcom/fusepowered/l1/AdParams;

.field protected mAppKey:Ljava/lang/String;

.field protected mHandler:Landroid/os/Handler;

.field protected volatile mIsReady:Z

.field protected mUserMetaData:Lcom/fusepowered/l1/UserMetaData;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-class v0, Lcom/fusepowered/l1/BaseAd;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/fusepowered/l1/BaseAd;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Lcom/fusepowered/l1/UserMetaData;

    invoke-direct {v0}, Lcom/fusepowered/l1/UserMetaData;-><init>()V

    iput-object v0, p0, Lcom/fusepowered/l1/BaseAd;->mUserMetaData:Lcom/fusepowered/l1/UserMetaData;

    .line 18
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/fusepowered/l1/BaseAd;->mHandler:Landroid/os/Handler;

    .line 21
    invoke-static {p1}, Lcom/fusepowered/l1/Utils;->init(Landroid/content/Context;)V

    .line 22
    return-void
.end method

.method private setServer(Ljava/lang/String;)V
    .locals 0
    .param p1, "server"    # Ljava/lang/String;

    .prologue
    .line 48
    sput-object p1, Lcom/fusepowered/l1/StaticParams;->URL_MOBILE:Ljava/lang/String;

    .line 49
    return-void
.end method


# virtual methods
.method protected getActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/fusepowered/l1/BaseAd;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public abstract getAdFormat()Lcom/fusepowered/l1/AdFormat;
.end method

.method protected getAdParams()Lcom/fusepowered/l1/AdParams;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/fusepowered/l1/BaseAd;->mAdParams:Lcom/fusepowered/l1/AdParams;

    return-object v0
.end method

.method public getAppKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/fusepowered/l1/BaseAd;->mAppKey:Ljava/lang/String;

    return-object v0
.end method

.method getRequestUrl()Ljava/lang/String;
    .locals 4

    .prologue
    .line 53
    new-instance v1, Lcom/fusepowered/l1/AdRequest;

    iget-object v2, p0, Lcom/fusepowered/l1/BaseAd;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lcom/fusepowered/l1/AdRequest;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/fusepowered/l1/BaseAd;->mAppKey:Ljava/lang/String;

    iget-object v3, p0, Lcom/fusepowered/l1/BaseAd;->mUserMetaData:Lcom/fusepowered/l1/UserMetaData;

    invoke-virtual {v1, v2, v3}, Lcom/fusepowered/l1/AdRequest;->getRequestUrl(Ljava/lang/String;Lcom/fusepowered/l1/UserMetaData;)Ljava/lang/String;

    move-result-object v0

    .line 54
    .local v0, "requestUrl":Ljava/lang/String;
    return-object v0
.end method

.method protected setAdParams(Lcom/fusepowered/l1/AdParams;)V
    .locals 0
    .param p1, "params"    # Lcom/fusepowered/l1/AdParams;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/fusepowered/l1/BaseAd;->mAdParams:Lcom/fusepowered/l1/AdParams;

    .line 28
    return-void
.end method

.method public setGender(Ljava/lang/String;)V
    .locals 1
    .param p1, "gender"    # Ljava/lang/String;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/fusepowered/l1/BaseAd;->mUserMetaData:Lcom/fusepowered/l1/UserMetaData;

    invoke-virtual {v0, p1}, Lcom/fusepowered/l1/UserMetaData;->setGender(Ljava/lang/String;)V

    .line 65
    return-void
.end method

.method public setKeywords(Ljava/lang/String;)V
    .locals 1
    .param p1, "keywords"    # Ljava/lang/String;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/fusepowered/l1/BaseAd;->mUserMetaData:Lcom/fusepowered/l1/UserMetaData;

    invoke-virtual {v0, p1}, Lcom/fusepowered/l1/UserMetaData;->setKeywords(Ljava/lang/String;)V

    .line 60
    return-void
.end method

.method public setTestMode(Z)V
    .locals 1
    .param p1, "mode"    # Z

    .prologue
    .line 35
    iget-object v0, p0, Lcom/fusepowered/l1/BaseAd;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/fusepowered/l1/IdentityProvider;->getInstance(Landroid/content/Context;)Lcom/fusepowered/l1/IdentityProvider;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/fusepowered/l1/IdentityProvider;->setTestMode(Z)V

    .line 36
    return-void
.end method

.method public setYearOfBirth(I)V
    .locals 1
    .param p1, "year"    # I

    .prologue
    .line 69
    iget-object v0, p0, Lcom/fusepowered/l1/BaseAd;->mUserMetaData:Lcom/fusepowered/l1/UserMetaData;

    invoke-virtual {v0, p1}, Lcom/fusepowered/l1/UserMetaData;->setYob(I)V

    .line 70
    return-void
.end method
