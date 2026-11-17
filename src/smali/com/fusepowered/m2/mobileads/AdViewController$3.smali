.class Lcom/fusepowered/m2/mobileads/AdViewController$3;
.super Ljava/lang/Object;
.source "AdViewController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/m2/mobileads/AdViewController;->setAdContentView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fusepowered/m2/mobileads/AdViewController;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/fusepowered/m2/mobileads/AdViewController;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 548
    iput-object p1, p0, Lcom/fusepowered/m2/mobileads/AdViewController$3;->this$0:Lcom/fusepowered/m2/mobileads/AdViewController;

    iput-object p2, p0, Lcom/fusepowered/m2/mobileads/AdViewController$3;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 551
    iget-object v1, p0, Lcom/fusepowered/m2/mobileads/AdViewController$3;->this$0:Lcom/fusepowered/m2/mobileads/AdViewController;

    invoke-virtual {v1}, Lcom/fusepowered/m2/mobileads/AdViewController;->getMoPubView()Lcom/fusepowered/m2/mobileads/MoPubView;

    move-result-object v0

    .line 552
    .local v0, "moPubView":Lcom/fusepowered/m2/mobileads/MoPubView;
    if-nez v0, :cond_0

    .line 557
    :goto_0
    return-void

    .line 555
    :cond_0
    invoke-virtual {v0}, Lcom/fusepowered/m2/mobileads/MoPubView;->removeAllViews()V

    .line 556
    iget-object v1, p0, Lcom/fusepowered/m2/mobileads/AdViewController$3;->val$view:Landroid/view/View;

    iget-object v2, p0, Lcom/fusepowered/m2/mobileads/AdViewController$3;->this$0:Lcom/fusepowered/m2/mobileads/AdViewController;

    iget-object v3, p0, Lcom/fusepowered/m2/mobileads/AdViewController$3;->val$view:Landroid/view/View;

    invoke-static {v2, v3}, Lcom/fusepowered/m2/mobileads/AdViewController;->access$100(Lcom/fusepowered/m2/mobileads/AdViewController;Landroid/view/View;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/fusepowered/m2/mobileads/MoPubView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method
