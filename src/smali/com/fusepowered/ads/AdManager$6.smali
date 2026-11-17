.class Lcom/fusepowered/ads/AdManager$6;
.super Ljava/lang/Object;
.source "AdManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/ads/AdManager;->onRewardedVideoCompleted(Lcom/fusepowered/ads/adapters/AdAdapter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fusepowered/ads/AdManager;

.field final synthetic val$provider:Lcom/fusepowered/ads/adapters/AdAdapter;


# direct methods
.method constructor <init>(Lcom/fusepowered/ads/AdManager;Lcom/fusepowered/ads/adapters/AdAdapter;)V
    .locals 0

    .prologue
    .line 753
    iput-object p1, p0, Lcom/fusepowered/ads/AdManager$6;->this$0:Lcom/fusepowered/ads/AdManager;

    iput-object p2, p0, Lcom/fusepowered/ads/AdManager$6;->val$provider:Lcom/fusepowered/ads/adapters/AdAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .prologue
    .line 756
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 757
    iget-object v0, p0, Lcom/fusepowered/ads/AdManager$6;->this$0:Lcom/fusepowered/ads/AdManager;

    invoke-static {v0}, Lcom/fusepowered/ads/AdManager;->access$800(Lcom/fusepowered/ads/AdManager;)Lcom/fusepowered/ads/DisplayRequest;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/fusepowered/ads/DisplayRequest;->isShowingRewardPostRollMessage:Z

    .line 758
    iget-object v0, p0, Lcom/fusepowered/ads/AdManager$6;->this$0:Lcom/fusepowered/ads/AdManager;

    iget-object v1, p0, Lcom/fusepowered/ads/AdManager$6;->val$provider:Lcom/fusepowered/ads/adapters/AdAdapter;

    invoke-virtual {v0, v1}, Lcom/fusepowered/ads/AdManager;->onAdClosed(Lcom/fusepowered/ads/adapters/AdAdapter;)V

    .line 759
    return-void
.end method
