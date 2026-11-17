.class Lcom/fusepowered/ads/AdManager$4;
.super Ljava/lang/Object;
.source "AdManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/ads/AdManager;->internalDisplayAd(Lcom/fusepowered/ads/DisplayRequest;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fusepowered/ads/AdManager;

.field final synthetic val$displayRequest:Lcom/fusepowered/ads/DisplayRequest;


# direct methods
.method constructor <init>(Lcom/fusepowered/ads/AdManager;Lcom/fusepowered/ads/DisplayRequest;)V
    .locals 0

    .prologue
    .line 452
    iput-object p1, p0, Lcom/fusepowered/ads/AdManager$4;->this$0:Lcom/fusepowered/ads/AdManager;

    iput-object p2, p0, Lcom/fusepowered/ads/AdManager$4;->val$displayRequest:Lcom/fusepowered/ads/DisplayRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 455
    iget-object v0, p0, Lcom/fusepowered/ads/AdManager$4;->this$0:Lcom/fusepowered/ads/AdManager;

    iget-object v1, p0, Lcom/fusepowered/ads/AdManager$4;->val$displayRequest:Lcom/fusepowered/ads/DisplayRequest;

    invoke-virtual {v0, v1}, Lcom/fusepowered/ads/AdManager;->onDisplayRequestTimedOut(Lcom/fusepowered/ads/DisplayRequest;)V

    .line 456
    return-void
.end method
