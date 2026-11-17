.class final Lcom/fusepowered/nx/monetization/MonetizationManager$10;
.super Ljava/lang/Object;
.source "MonetizationManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/nx/monetization/MonetizationManager;->fetchBannerAd(Landroid/app/Activity;Ljava/lang/String;Lcom/fusepowered/nx/monetization/listeners/OnAdEventBase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$customPlacement:Ljava/lang/String;

.field final synthetic val$listener:Lcom/fusepowered/nx/monetization/listeners/OnAdEventBase;


# direct methods
.method constructor <init>(Landroid/app/Activity;Ljava/lang/String;Lcom/fusepowered/nx/monetization/listeners/OnAdEventBase;)V
    .locals 0

    .prologue
    .line 1135
    iput-object p1, p0, Lcom/fusepowered/nx/monetization/MonetizationManager$10;->val$activity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/fusepowered/nx/monetization/MonetizationManager$10;->val$customPlacement:Ljava/lang/String;

    iput-object p3, p0, Lcom/fusepowered/nx/monetization/MonetizationManager$10;->val$listener:Lcom/fusepowered/nx/monetization/listeners/OnAdEventBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1139
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/MonetizationManager$10;->val$activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/fusepowered/nx/monetization/MonetizationManager$10;->val$customPlacement:Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/fusepowered/nx/monetization/MonetizationManager$10;->val$listener:Lcom/fusepowered/nx/monetization/listeners/OnAdEventBase;

    invoke-static {v0, v1, v2, v3}, Lcom/fusepowered/nx/monetization/mraid/MRAIDManager;->cacheBanner(Landroid/app/Activity;Ljava/lang/String;Landroid/graphics/Rect;Lcom/fusepowered/nx/monetization/listeners/OnAdEventBase;)Z

    .line 1140
    return-void
.end method
