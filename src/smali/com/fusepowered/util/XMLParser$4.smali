.class final Lcom/fusepowered/util/XMLParser$4;
.super Ljava/lang/Object;
.source "XMLParser.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/util/XMLParser;->parseResponse(Lcom/fusepowered/util/ActionType;Ljava/lang/String;Ljava/lang/String;Lcom/fusepowered/util/ResponseValues;Lcom/fusepowered/util/FuseCallback;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$fuseCallback:Lcom/fusepowered/util/FuseCallback;

.field final synthetic val$o:Ljava/lang/String;

.field final synthetic val$tx:Ljava/lang/String;

.field final synthetic val$v:I


# direct methods
.method constructor <init>(Lcom/fusepowered/util/FuseCallback;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 305
    iput-object p1, p0, Lcom/fusepowered/util/XMLParser$4;->val$fuseCallback:Lcom/fusepowered/util/FuseCallback;

    iput p2, p0, Lcom/fusepowered/util/XMLParser$4;->val$v:I

    iput-object p3, p0, Lcom/fusepowered/util/XMLParser$4;->val$tx:Ljava/lang/String;

    iput-object p4, p0, Lcom/fusepowered/util/XMLParser$4;->val$o:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 310
    iget-object v0, p0, Lcom/fusepowered/util/XMLParser$4;->val$fuseCallback:Lcom/fusepowered/util/FuseCallback;

    iget v1, p0, Lcom/fusepowered/util/XMLParser$4;->val$v:I

    iget-object v2, p0, Lcom/fusepowered/util/XMLParser$4;->val$tx:Ljava/lang/String;

    iget-object v3, p0, Lcom/fusepowered/util/XMLParser$4;->val$o:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/fusepowered/util/FuseCallback;->purchaseVerification(ILjava/lang/String;Ljava/lang/String;)V

    .line 311
    return-void
.end method
