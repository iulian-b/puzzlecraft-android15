.class Lcom/fusepowered/im/androidsdk/IMBrowserActivity$1;
.super Ljava/lang/Object;
.source "IMBrowserActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/im/androidsdk/IMBrowserActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/fusepowered/im/androidsdk/IMBrowserActivity;


# direct methods
.method constructor <init>(Lcom/fusepowered/im/androidsdk/IMBrowserActivity;)V
    .locals 0

    .prologue
    .line 206
    iput-object p1, p0, Lcom/fusepowered/im/androidsdk/IMBrowserActivity$1;->a:Lcom/fusepowered/im/androidsdk/IMBrowserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lcom/fusepowered/im/androidsdk/IMBrowserActivity$1;->a:Lcom/fusepowered/im/androidsdk/IMBrowserActivity;

    invoke-virtual {v0}, Lcom/fusepowered/im/androidsdk/IMBrowserActivity;->finish()V

    .line 229
    return-void
.end method
