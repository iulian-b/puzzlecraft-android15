.class Lcom/fusepowered/al/impl/adview/q;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field final synthetic a:Lcom/fusepowered/al/impl/adview/o;


# direct methods
.method constructor <init>(Lcom/fusepowered/al/impl/adview/o;)V
    .locals 0

    iput-object p1, p0, Lcom/fusepowered/al/impl/adview/q;->a:Lcom/fusepowered/al/impl/adview/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 2

    const-string v0, "AdWebView"

    const-string v1, "Received a LongClick event."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0
.end method
