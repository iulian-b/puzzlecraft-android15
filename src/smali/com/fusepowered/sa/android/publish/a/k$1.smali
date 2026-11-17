.class Lcom/fusepowered/sa/android/publish/a/k$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/fusepowered/sa/android/publish/AdEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/sa/android/publish/a/k;->load(Lcom/fusepowered/sa/android/publish/model/AdPreferences;Lcom/fusepowered/sa/android/publish/AdEventListener;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/fusepowered/sa/android/publish/AdEventListener;

.field final synthetic b:Lcom/fusepowered/sa/android/publish/a/k;


# direct methods
.method constructor <init>(Lcom/fusepowered/sa/android/publish/a/k;Lcom/fusepowered/sa/android/publish/AdEventListener;)V
    .locals 0

    iput-object p1, p0, Lcom/fusepowered/sa/android/publish/a/k$1;->b:Lcom/fusepowered/sa/android/publish/a/k;

    iput-object p2, p0, Lcom/fusepowered/sa/android/publish/a/k$1;->a:Lcom/fusepowered/sa/android/publish/AdEventListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailedToReceiveAd(Lcom/fusepowered/sa/android/publish/Ad;)V
    .locals 3

    const-string v0, "ReturnAd"

    const/4 v1, 0x3

    const-string v2, "Return Ad Failed to Load"

    invoke-static {v0, v1, v2}, Lcom/fusepowered/sa/android/publish/f/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/a/k$1;->a:Lcom/fusepowered/sa/android/publish/AdEventListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/a/k$1;->a:Lcom/fusepowered/sa/android/publish/AdEventListener;

    invoke-interface {v0, p1}, Lcom/fusepowered/sa/android/publish/AdEventListener;->onFailedToReceiveAd(Lcom/fusepowered/sa/android/publish/Ad;)V

    :cond_0
    return-void
.end method

.method public onReceiveAd(Lcom/fusepowered/sa/android/publish/Ad;)V
    .locals 4

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/a/k$1;->b:Lcom/fusepowered/sa/android/publish/a/k;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/fusepowered/sa/android/publish/a/k;->a(Lcom/fusepowered/sa/android/publish/a/k;J)J

    const-string v0, "ReturnAd"

    const/4 v1, 0x3

    const-string v2, "Return Ad Loaded"

    invoke-static {v0, v1, v2}, Lcom/fusepowered/sa/android/publish/f/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/a/k$1;->a:Lcom/fusepowered/sa/android/publish/AdEventListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/a/k$1;->a:Lcom/fusepowered/sa/android/publish/AdEventListener;

    invoke-interface {v0, p1}, Lcom/fusepowered/sa/android/publish/AdEventListener;->onReceiveAd(Lcom/fusepowered/sa/android/publish/Ad;)V

    :cond_0
    return-void
.end method
