.class final Lcom/fusepowered/nx/monetization/MonetizationManager$3;
.super Ljava/lang/Object;
.source "MonetizationManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/nx/monetization/MonetizationManager;->showReadyAdStateless(Landroid/app/Activity;Ljava/lang/String;Lcom/fusepowered/nx/monetization/listeners/OnAdEventBase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$listener:Lcom/fusepowered/nx/monetization/listeners/OnAdEventBase;

.field final synthetic val$placementName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/app/Activity;Lcom/fusepowered/nx/monetization/listeners/OnAdEventBase;)V
    .locals 0

    .prologue
    .line 744
    iput-object p1, p0, Lcom/fusepowered/nx/monetization/MonetizationManager$3;->val$placementName:Ljava/lang/String;

    iput-object p2, p0, Lcom/fusepowered/nx/monetization/MonetizationManager$3;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/fusepowered/nx/monetization/MonetizationManager$3;->val$listener:Lcom/fusepowered/nx/monetization/listeners/OnAdEventBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 747
    iget-object v1, p0, Lcom/fusepowered/nx/monetization/MonetizationManager$3;->val$placementName:Ljava/lang/String;

    invoke-static {v1}, Lcom/fusepowered/nx/monetization/MonetizationManager;->isAdReady(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 749
    :try_start_0
    iget-object v1, p0, Lcom/fusepowered/nx/monetization/MonetizationManager$3;->val$activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/fusepowered/nx/monetization/MonetizationManager$3;->val$placementName:Ljava/lang/String;

    iget-object v3, p0, Lcom/fusepowered/nx/monetization/MonetizationManager$3;->val$listener:Lcom/fusepowered/nx/monetization/listeners/OnAdEventBase;

    const/4 v4, 0x1

    invoke-static {v1, v2, v3, v4}, Lcom/fusepowered/nx/monetization/mraid/MRAIDManager;->showInterstitial(Landroid/app/Activity;Ljava/lang/String;Lcom/fusepowered/nx/monetization/listeners/OnAdEventBase;Z)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 757
    :goto_0
    return-void

    .line 750
    :catch_0
    move-exception v0

    .line 751
    .local v0, "tr":Ljava/lang/Throwable;
    const-string v1, "Unhandled exception/error"

    invoke-static {v1, v0}, Lcom/fusepowered/nx/common/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 755
    .end local v0    # "tr":Ljava/lang/Throwable;
    :cond_0
    const-string v1, "Ad is not ready to show.. "

    invoke-static {v1}, Lcom/fusepowered/nx/common/Log;->w(Ljava/lang/String;)V

    goto :goto_0
.end method
