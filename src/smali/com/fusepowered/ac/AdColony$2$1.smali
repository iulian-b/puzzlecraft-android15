.class Lcom/fusepowered/ac/AdColony$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/ac/AdColony$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/fusepowered/ac/AdColony$2;


# direct methods
.method constructor <init>(Lcom/fusepowered/ac/AdColony$2;)V
    .locals 0

    .prologue
    .line 207
    iput-object p1, p0, Lcom/fusepowered/ac/AdColony$2$1;->a:Lcom/fusepowered/ac/AdColony$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 210
    move v1, v2

    :goto_0
    sget-object v0, Lcom/fusepowered/ac/a;->ac:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 212
    sget-object v0, Lcom/fusepowered/ac/a;->ac:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fusepowered/ac/AdColonyNativeAdView;

    .line 213
    if-eqz v0, :cond_0

    invoke-static {}, Lcom/fusepowered/ac/a;->b()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, v0, Lcom/fusepowered/ac/AdColonyNativeAdView;->d:Landroid/app/Activity;

    if-ne v3, v4, :cond_0

    iget-boolean v3, v0, Lcom/fusepowered/ac/AdColonyNativeAdView;->r:Z

    if-nez v3, :cond_0

    .line 215
    iput-boolean v2, v0, Lcom/fusepowered/ac/AdColonyNativeAdView;->x:Z

    .line 216
    invoke-virtual {v0}, Lcom/fusepowered/ac/AdColonyNativeAdView;->invalidate()V

    .line 217
    iget-object v3, v0, Lcom/fusepowered/ac/AdColonyNativeAdView;->L:Lcom/fusepowered/ac/AdColonyNativeAdView$b;

    if-eqz v3, :cond_0

    .line 219
    iget-object v3, v0, Lcom/fusepowered/ac/AdColonyNativeAdView;->L:Lcom/fusepowered/ac/AdColonyNativeAdView$b;

    iput-boolean v2, v3, Lcom/fusepowered/ac/AdColonyNativeAdView$b;->a:Z

    .line 220
    iget-object v0, v0, Lcom/fusepowered/ac/AdColonyNativeAdView;->L:Lcom/fusepowered/ac/AdColonyNativeAdView$b;

    invoke-virtual {v0}, Lcom/fusepowered/ac/AdColonyNativeAdView$b;->invalidate()V

    .line 210
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 224
    :cond_1
    return-void
.end method
