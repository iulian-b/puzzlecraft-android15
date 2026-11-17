.class Lcom/fusepowered/ac/AdColonyNativeAdView$a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/ac/AdColonyNativeAdView$a;->onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/fusepowered/ac/AdColonyNativeAdView$a;


# direct methods
.method constructor <init>(Lcom/fusepowered/ac/AdColonyNativeAdView$a;)V
    .locals 0

    .prologue
    .line 881
    iput-object p1, p0, Lcom/fusepowered/ac/AdColonyNativeAdView$a$1;->a:Lcom/fusepowered/ac/AdColonyNativeAdView$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 884
    iget-object v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView$a$1;->a:Lcom/fusepowered/ac/AdColonyNativeAdView$a;

    iget-object v0, v0, Lcom/fusepowered/ac/AdColonyNativeAdView$a;->c:Lcom/fusepowered/ac/AdColonyNativeAdView;

    iget-boolean v0, v0, Lcom/fusepowered/ac/AdColonyNativeAdView;->w:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView$a$1;->a:Lcom/fusepowered/ac/AdColonyNativeAdView$a;

    iget-object v0, v0, Lcom/fusepowered/ac/AdColonyNativeAdView$a;->c:Lcom/fusepowered/ac/AdColonyNativeAdView;

    iget-boolean v0, v0, Lcom/fusepowered/ac/AdColonyNativeAdView;->x:Z

    if-nez v0, :cond_0

    .line 886
    iget-object v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView$a$1;->a:Lcom/fusepowered/ac/AdColonyNativeAdView$a;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/fusepowered/ac/AdColonyNativeAdView$a;->b:Z

    .line 887
    iget-object v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView$a$1;->a:Lcom/fusepowered/ac/AdColonyNativeAdView$a;

    iget-object v0, v0, Lcom/fusepowered/ac/AdColonyNativeAdView$a;->c:Lcom/fusepowered/ac/AdColonyNativeAdView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/fusepowered/ac/AdColonyNativeAdView;->r:Z

    .line 888
    iget-object v0, p0, Lcom/fusepowered/ac/AdColonyNativeAdView$a$1;->a:Lcom/fusepowered/ac/AdColonyNativeAdView$a;

    iget-object v0, v0, Lcom/fusepowered/ac/AdColonyNativeAdView$a;->c:Lcom/fusepowered/ac/AdColonyNativeAdView;

    iget-object v0, v0, Lcom/fusepowered/ac/AdColonyNativeAdView;->K:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 890
    :cond_0
    return-void
.end method
