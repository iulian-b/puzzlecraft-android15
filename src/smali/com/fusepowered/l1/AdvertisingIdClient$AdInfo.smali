.class public final Lcom/fusepowered/l1/AdvertisingIdClient$AdInfo;
.super Ljava/lang/Object;
.source "AdvertisingIdClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fusepowered/l1/AdvertisingIdClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AdInfo"
.end annotation


# instance fields
.field private final mAdvertisingId:Ljava/lang/String;

.field private final mLimitAdTrackingEnabled:Z


# direct methods
.method constructor <init>(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "advertisingId"    # Ljava/lang/String;
    .param p2, "limitAdTrackingEnabled"    # Z

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/fusepowered/l1/AdvertisingIdClient$AdInfo;->mAdvertisingId:Ljava/lang/String;

    .line 26
    iput-boolean p2, p0, Lcom/fusepowered/l1/AdvertisingIdClient$AdInfo;->mLimitAdTrackingEnabled:Z

    .line 27
    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/fusepowered/l1/AdvertisingIdClient$AdInfo;->mAdvertisingId:Ljava/lang/String;

    return-object v0
.end method

.method public isLimitAdTrackingEnabled()Z
    .locals 1

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/fusepowered/l1/AdvertisingIdClient$AdInfo;->mLimitAdTrackingEnabled:Z

    return v0
.end method
