.class public Lcom/fusepowered/nx/common/LogItem;
.super Ljava/lang/Object;
.source "LogItem.java"


# instance fields
.field private displayName:Ljava/lang/String;
    .annotation runtime Lcom/fusepowered/nx/gson/annotations/SerializedName;
        value = "DisplayName"
    .end annotation
.end field

.field private displayText:Ljava/lang/String;
    .annotation runtime Lcom/fusepowered/nx/gson/annotations/SerializedName;
        value = "DisplayText"
    .end annotation
.end field

.field private referenceName:Ljava/lang/String;
    .annotation runtime Lcom/fusepowered/nx/gson/annotations/SerializedName;
        value = "ReferenceName"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
