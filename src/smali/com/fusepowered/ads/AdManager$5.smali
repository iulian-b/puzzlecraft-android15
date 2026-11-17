.class Lcom/fusepowered/ads/AdManager$5;
.super Ljava/lang/Object;
.source "AdManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/ads/AdManager;->onAdClosed(Lcom/fusepowered/ads/adapters/AdAdapter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fusepowered/ads/AdManager;


# direct methods
.method constructor <init>(Lcom/fusepowered/ads/AdManager;)V
    .locals 0

    .prologue
    .line 650
    iput-object p1, p0, Lcom/fusepowered/ads/AdManager$5;->this$0:Lcom/fusepowered/ads/AdManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 653
    iget-object v0, p0, Lcom/fusepowered/ads/AdManager$5;->this$0:Lcom/fusepowered/ads/AdManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/fusepowered/ads/AdManager;->access$802(Lcom/fusepowered/ads/AdManager;Lcom/fusepowered/ads/DisplayRequest;)Lcom/fusepowered/ads/DisplayRequest;

    .line 654
    return-void
.end method
