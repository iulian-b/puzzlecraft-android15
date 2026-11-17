.class Lcom/fusepowered/ac/m$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaScannerConnection$OnScanCompletedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/ac/m;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/fusepowered/ac/m;


# direct methods
.method constructor <init>(Lcom/fusepowered/ac/m;)V
    .locals 0

    .prologue
    .line 171
    iput-object p1, p0, Lcom/fusepowered/ac/m$2;->a:Lcom/fusepowered/ac/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScanCompleted(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 3
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 174
    iget-object v0, p0, Lcom/fusepowered/ac/m$2;->a:Lcom/fusepowered/ac/m;

    iget-object v0, v0, Lcom/fusepowered/ac/m;->b:Landroid/app/Activity;

    const-string v1, "Screenshot saved to Gallery!"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 175
    return-void
.end method
