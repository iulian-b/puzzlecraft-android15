.class Lcom/fusepowered/ads/adapters/MRaidVideoActivity$2;
.super Ljava/lang/Object;
.source "MRaidVideoActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/ads/adapters/MRaidVideoActivity;->addCloseRegion()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fusepowered/ads/adapters/MRaidVideoActivity;


# direct methods
.method constructor <init>(Lcom/fusepowered/ads/adapters/MRaidVideoActivity;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lcom/fusepowered/ads/adapters/MRaidVideoActivity$2;->this$0:Lcom/fusepowered/ads/adapters/MRaidVideoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/MRaidVideoActivity$2;->this$0:Lcom/fusepowered/ads/adapters/MRaidVideoActivity;

    invoke-static {v0}, Lcom/fusepowered/ads/adapters/MRaidVideoActivity;->access$100(Lcom/fusepowered/ads/adapters/MRaidVideoActivity;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 90
    return-void
.end method
