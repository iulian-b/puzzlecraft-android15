.class final Lcom/fusepowered/fuseapi/FuseAPI$5;
.super Ljava/lang/Object;
.source "FuseAPI.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/fuseapi/FuseAPI;->showDialog(Lcom/fusepowered/util/Message;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$message:Lcom/fusepowered/util/Message;

.field final synthetic val$next:I


# direct methods
.method constructor <init>(Lcom/fusepowered/util/Message;I)V
    .locals 0

    .prologue
    .line 2082
    iput-object p1, p0, Lcom/fusepowered/fuseapi/FuseAPI$5;->val$message:Lcom/fusepowered/util/Message;

    iput p2, p0, Lcom/fusepowered/fuseapi/FuseAPI$5;->val$next:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 2088
    iget-object v0, p0, Lcom/fusepowered/fuseapi/FuseAPI$5;->val$message:Lcom/fusepowered/util/Message;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/fusepowered/util/Message;->setDisplayed(Z)V

    .line 2089
    iget-object v0, p0, Lcom/fusepowered/fuseapi/FuseAPI$5;->val$message:Lcom/fusepowered/util/Message;

    invoke-virtual {v0}, Lcom/fusepowered/util/Message;->getId()I

    move-result v0

    invoke-static {v0}, Lcom/fusepowered/fuseapi/FuseAPI;->access$600(I)V

    .line 2090
    iget v0, p0, Lcom/fusepowered/fuseapi/FuseAPI$5;->val$next:I

    invoke-static {v0}, Lcom/fusepowered/fuseapi/FuseAPI;->access$900(I)V

    .line 2091
    return-void
.end method
