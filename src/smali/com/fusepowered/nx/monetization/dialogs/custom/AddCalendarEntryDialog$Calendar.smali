.class public Lcom/fusepowered/nx/monetization/dialogs/custom/AddCalendarEntryDialog$Calendar;
.super Ljava/lang/Object;
.source "AddCalendarEntryDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fusepowered/nx/monetization/dialogs/custom/AddCalendarEntryDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Calendar"
.end annotation


# instance fields
.field private final id:I

.field private final name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "id"    # I

    .prologue
    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    iput-object p1, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/AddCalendarEntryDialog$Calendar;->name:Ljava/lang/String;

    .line 116
    iput p2, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/AddCalendarEntryDialog$Calendar;->id:I

    .line 118
    invoke-static {p1}, Lcom/fusepowered/nx/common/Utilities;->stringIsEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    const-string p1, "<No Name>"

    .line 122
    :cond_0
    return-void
.end method


# virtual methods
.method public getId()I
    .locals 1

    .prologue
    .line 129
    iget v0, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/AddCalendarEntryDialog$Calendar;->id:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/dialogs/custom/AddCalendarEntryDialog$Calendar;->name:Ljava/lang/String;

    return-object v0
.end method
