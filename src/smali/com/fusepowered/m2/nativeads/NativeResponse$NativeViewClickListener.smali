.class Lcom/fusepowered/m2/nativeads/NativeResponse$NativeViewClickListener;
.super Ljava/lang/Object;
.source "NativeResponse.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation build Lcom/fusepowered/m2/common/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fusepowered/m2/nativeads/NativeResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "NativeViewClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fusepowered/m2/nativeads/NativeResponse;


# direct methods
.method constructor <init>(Lcom/fusepowered/m2/nativeads/NativeResponse;)V
    .locals 0

    .prologue
    .line 375
    iput-object p1, p0, Lcom/fusepowered/m2/nativeads/NativeResponse$NativeViewClickListener;->this$0:Lcom/fusepowered/m2/nativeads/NativeResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 378
    iget-object v0, p0, Lcom/fusepowered/m2/nativeads/NativeResponse$NativeViewClickListener;->this$0:Lcom/fusepowered/m2/nativeads/NativeResponse;

    invoke-virtual {v0, p1}, Lcom/fusepowered/m2/nativeads/NativeResponse;->handleClick(Landroid/view/View;)V

    .line 379
    return-void
.end method
