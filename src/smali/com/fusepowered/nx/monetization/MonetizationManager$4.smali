.class final Lcom/fusepowered/nx/monetization/MonetizationManager$4;
.super Ljava/lang/Object;
.source "MonetizationManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/nx/monetization/MonetizationManager;->showBannerAd(Landroid/app/Activity;Ljava/lang/String;Landroid/graphics/Rect;Lcom/fusepowered/nx/monetization/enums/BannerPosition;Lcom/fusepowered/nx/monetization/listeners/OnAdEventBase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$adPosition:Lcom/fusepowered/nx/monetization/enums/BannerPosition;

.field final synthetic val$customPlacement:Ljava/lang/String;

.field final synthetic val$listener:Lcom/fusepowered/nx/monetization/listeners/OnAdEventBase;

.field final synthetic val$position:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(Landroid/app/Activity;Ljava/lang/String;Landroid/graphics/Rect;Lcom/fusepowered/nx/monetization/enums/BannerPosition;Lcom/fusepowered/nx/monetization/listeners/OnAdEventBase;)V
    .locals 0

    .prologue
    .line 902
    iput-object p1, p0, Lcom/fusepowered/nx/monetization/MonetizationManager$4;->val$activity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/fusepowered/nx/monetization/MonetizationManager$4;->val$customPlacement:Ljava/lang/String;

    iput-object p3, p0, Lcom/fusepowered/nx/monetization/MonetizationManager$4;->val$position:Landroid/graphics/Rect;

    iput-object p4, p0, Lcom/fusepowered/nx/monetization/MonetizationManager$4;->val$adPosition:Lcom/fusepowered/nx/monetization/enums/BannerPosition;

    iput-object p5, p0, Lcom/fusepowered/nx/monetization/MonetizationManager$4;->val$listener:Lcom/fusepowered/nx/monetization/listeners/OnAdEventBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 906
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/MonetizationManager$4;->val$activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/fusepowered/nx/monetization/MonetizationManager$4;->val$customPlacement:Ljava/lang/String;

    iget-object v2, p0, Lcom/fusepowered/nx/monetization/MonetizationManager$4;->val$position:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/fusepowered/nx/monetization/MonetizationManager$4;->val$adPosition:Lcom/fusepowered/nx/monetization/enums/BannerPosition;

    iget-object v4, p0, Lcom/fusepowered/nx/monetization/MonetizationManager$4;->val$listener:Lcom/fusepowered/nx/monetization/listeners/OnAdEventBase;

    const/4 v5, 0x1

    invoke-static/range {v0 .. v5}, Lcom/fusepowered/nx/monetization/mraid/MRAIDManager;->showBanner(Landroid/app/Activity;Ljava/lang/String;Landroid/graphics/Rect;Lcom/fusepowered/nx/monetization/enums/BannerPosition;Lcom/fusepowered/nx/monetization/listeners/OnAdEventBase;Z)Z

    .line 907
    return-void
.end method
