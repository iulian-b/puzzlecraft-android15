.class final Lcom/fusepowered/nx/monetization/MonetizationManager$7;
.super Ljava/lang/Object;
.source "MonetizationManager.java"

# interfaces
.implements Lcom/fusepowered/nx/monetization/listeners/SessionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/nx/monetization/MonetizationManager;->fetchAdStateless(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/fusepowered/nx/monetization/listeners/OnAdEventBase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1042
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createSessionCompleted(ZZLjava/lang/String;)V
    .locals 0
    .param p1, "success"    # Z
    .param p2, "isOfferWallEnabled"    # Z
    .param p3, "sessionId"    # Ljava/lang/String;

    .prologue
    .line 1045
    invoke-static {p1}, Lcom/fusepowered/nx/monetization/MonetizationManager;->access$000(Z)V

    .line 1046
    return-void
.end method
