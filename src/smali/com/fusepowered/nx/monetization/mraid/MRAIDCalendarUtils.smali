.class Lcom/fusepowered/nx/monetization/mraid/MRAIDCalendarUtils;
.super Ljava/lang/Object;
.source "MRAIDCalendarUtils.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "InlinedApi"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fusepowered/nx/monetization/mraid/MRAIDCalendarUtils$OldCalendarEntryCreator;,
        Lcom/fusepowered/nx/monetization/mraid/MRAIDCalendarUtils$NewCalendarEntryCreator;
    }
.end annotation


# static fields
.field private static final CALENDAR_ID:Ljava/lang/String; = "_id"

.field private static final CALENDAR_NAME:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 53
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_0

    .line 54
    const-string v0, "name"

    sput-object v0, Lcom/fusepowered/nx/monetization/mraid/MRAIDCalendarUtils;->CALENDAR_NAME:Ljava/lang/String;

    .line 58
    :goto_0
    return-void

    .line 56
    :cond_0
    const-string v0, "calendar_displayName"

    sput-object v0, Lcom/fusepowered/nx/monetization/mraid/MRAIDCalendarUtils;->CALENDAR_NAME:Ljava/lang/String;

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    return-void
.end method

.method static synthetic access$100(Lcom/fusepowered/nx/monetization/mraid/objects/CalendarEntryData;)V
    .locals 0
    .param p0, "x0"    # Lcom/fusepowered/nx/monetization/mraid/objects/CalendarEntryData;

    .prologue
    .line 47
    invoke-static {p0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDCalendarUtils;->validateCalendarData(Lcom/fusepowered/nx/monetization/mraid/objects/CalendarEntryData;)V

    return-void
.end method

.method public static createCalendarEntry(Landroid/app/Activity;Lcom/fusepowered/nx/monetization/dialogs/custom/AddCalendarEntryDialog$Calendar;Lcom/fusepowered/nx/monetization/mraid/objects/CalendarEntryData;)V
    .locals 2
    .param p0, "context"    # Landroid/app/Activity;
    .param p1, "calendar"    # Lcom/fusepowered/nx/monetization/dialogs/custom/AddCalendarEntryDialog$Calendar;
    .param p2, "data"    # Lcom/fusepowered/nx/monetization/mraid/objects/CalendarEntryData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 68
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    if-eqz p1, :cond_0

    .line 69
    new-instance v0, Lcom/fusepowered/nx/monetization/mraid/MRAIDCalendarUtils$NewCalendarEntryCreator;

    invoke-direct {v0, p2}, Lcom/fusepowered/nx/monetization/mraid/MRAIDCalendarUtils$NewCalendarEntryCreator;-><init>(Lcom/fusepowered/nx/monetization/mraid/objects/CalendarEntryData;)V

    invoke-virtual {v0, p0, p1}, Lcom/fusepowered/nx/monetization/mraid/MRAIDCalendarUtils$NewCalendarEntryCreator;->add(Landroid/content/Context;Lcom/fusepowered/nx/monetization/dialogs/custom/AddCalendarEntryDialog$Calendar;)V

    .line 73
    :goto_0
    const-string v0, "Calendar entry added"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 74
    return-void

    .line 71
    :cond_0
    new-instance v0, Lcom/fusepowered/nx/monetization/mraid/MRAIDCalendarUtils$OldCalendarEntryCreator;

    invoke-direct {v0, p2}, Lcom/fusepowered/nx/monetization/mraid/MRAIDCalendarUtils$OldCalendarEntryCreator;-><init>(Lcom/fusepowered/nx/monetization/mraid/objects/CalendarEntryData;)V

    invoke-static {v0, p0, p1}, Lcom/fusepowered/nx/monetization/mraid/MRAIDCalendarUtils$OldCalendarEntryCreator;->access$000(Lcom/fusepowered/nx/monetization/mraid/MRAIDCalendarUtils$OldCalendarEntryCreator;Landroid/app/Activity;Lcom/fusepowered/nx/monetization/dialogs/custom/AddCalendarEntryDialog$Calendar;)V

    goto :goto_0
.end method

.method public static deviceSupportsCalendarProvider(Landroid/app/Activity;)Z
    .locals 7
    .param p0, "context"    # Landroid/app/Activity;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 79
    :try_start_0
    new-instance v0, Lcom/fusepowered/nx/monetization/dialogs/custom/AddCalendarEntryDialog$Calendar;

    const-string v5, "Test"

    const/4 v6, 0x0

    invoke-direct {v0, v5, v6}, Lcom/fusepowered/nx/monetization/dialogs/custom/AddCalendarEntryDialog$Calendar;-><init>(Ljava/lang/String;I)V

    .line 80
    .local v0, "calendar":Lcom/fusepowered/nx/monetization/dialogs/custom/AddCalendarEntryDialog$Calendar;
    new-instance v1, Lcom/fusepowered/nx/monetization/mraid/objects/CalendarEntryData;

    invoke-direct {v1}, Lcom/fusepowered/nx/monetization/mraid/objects/CalendarEntryData;-><init>()V

    .line 81
    .local v1, "data":Lcom/fusepowered/nx/monetization/mraid/objects/CalendarEntryData;
    const-string v5, "Test"

    invoke-virtual {v1, v5}, Lcom/fusepowered/nx/monetization/mraid/objects/CalendarEntryData;->setDescription(Ljava/lang/String;)V

    .line 82
    const-string v5, "1950-06-20T20:50+0200"

    invoke-virtual {v1, v5}, Lcom/fusepowered/nx/monetization/mraid/objects/CalendarEntryData;->setStart(Ljava/lang/String;)V

    .line 83
    const-string v5, "1950-06-20T20:55+0200"

    invoke-virtual {v1, v5}, Lcom/fusepowered/nx/monetization/mraid/objects/CalendarEntryData;->setEnd(Ljava/lang/String;)V

    .line 84
    const-string v5, "-60000"

    invoke-virtual {v1, v5}, Lcom/fusepowered/nx/monetization/mraid/objects/CalendarEntryData;->setReminder(Ljava/lang/String;)V

    .line 85
    const-string v5, "0"

    invoke-virtual {v1, v5}, Lcom/fusepowered/nx/monetization/mraid/objects/CalendarEntryData;->setId(Ljava/lang/String;)V

    .line 86
    const-string v5, "Test"

    invoke-virtual {v1, v5}, Lcom/fusepowered/nx/monetization/mraid/objects/CalendarEntryData;->setLocation(Ljava/lang/String;)V

    .line 87
    const-string v5, "tentative"

    invoke-virtual {v1, v5}, Lcom/fusepowered/nx/monetization/mraid/objects/CalendarEntryData;->setStatus(Ljava/lang/String;)V

    .line 88
    const-string v5, "Test"

    invoke-virtual {v1, v5}, Lcom/fusepowered/nx/monetization/mraid/objects/CalendarEntryData;->setSummary(Ljava/lang/String;)V

    .line 89
    const-string v5, "opaque"

    invoke-virtual {v1, v5}, Lcom/fusepowered/nx/monetization/mraid/objects/CalendarEntryData;->setTransparency(Ljava/lang/String;)V

    .line 90
    new-instance v2, Lcom/fusepowered/nx/monetization/mraid/MRAIDCalendarUtils$OldCalendarEntryCreator;

    const/4 v5, 0x1

    invoke-direct {v2, v1, v5}, Lcom/fusepowered/nx/monetization/mraid/MRAIDCalendarUtils$OldCalendarEntryCreator;-><init>(Lcom/fusepowered/nx/monetization/mraid/objects/CalendarEntryData;Z)V

    .line 91
    .local v2, "entry":Lcom/fusepowered/nx/monetization/mraid/MRAIDCalendarUtils$OldCalendarEntryCreator;
    invoke-static {v2, p0, v0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDCalendarUtils$OldCalendarEntryCreator;->access$000(Lcom/fusepowered/nx/monetization/mraid/MRAIDCalendarUtils$OldCalendarEntryCreator;Landroid/app/Activity;Lcom/fusepowered/nx/monetization/dialogs/custom/AddCalendarEntryDialog$Calendar;)V

    .line 92
    invoke-virtual {v2, p0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDCalendarUtils$OldCalendarEntryCreator;->delete(Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    .end local v0    # "calendar":Lcom/fusepowered/nx/monetization/dialogs/custom/AddCalendarEntryDialog$Calendar;
    .end local v1    # "data":Lcom/fusepowered/nx/monetization/mraid/objects/CalendarEntryData;
    .end local v2    # "entry":Lcom/fusepowered/nx/monetization/mraid/MRAIDCalendarUtils$OldCalendarEntryCreator;
    :goto_0
    return v3

    .line 94
    :catch_0
    move-exception v3

    move v3, v4

    .line 97
    goto :goto_0
.end method

.method public static queryCalendarsList(Landroid/content/Context;)Ljava/util/List;
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/fusepowered/nx/monetization/dialogs/custom/AddCalendarEntryDialog$Calendar;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    const/4 v3, 0x0

    .line 102
    const/4 v4, 0x2

    new-array v2, v4, [Ljava/lang/String;

    const-string v4, "_id"

    aput-object v4, v2, v11

    sget-object v4, Lcom/fusepowered/nx/monetization/mraid/MRAIDCalendarUtils;->CALENDAR_NAME:Ljava/lang/String;

    aput-object v4, v2, v12

    .line 106
    .local v2, "projection":[Ljava/lang/String;
    const-string v4, "content://com.android.calendar/calendars"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 107
    .local v1, "calendarUri":Landroid/net/Uri;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 109
    .local v7, "calendars":Ljava/util/List;, "Ljava/util/List<Lcom/fusepowered/nx/monetization/dialogs/custom/AddCalendarEntryDialog$Calendar;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .local v0, "contentResolver":Landroid/content/ContentResolver;
    move-object v4, v3

    move-object v5, v3

    .line 110
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 112
    .local v9, "managedCursor":Landroid/database/Cursor;
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 113
    aget-object v3, v2, v11

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 114
    .local v8, "idCol":I
    aget-object v3, v2, v12

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 117
    .local v10, "nameCol":I
    :cond_0
    :try_start_0
    new-instance v6, Lcom/fusepowered/nx/monetization/dialogs/custom/AddCalendarEntryDialog$Calendar;

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v9, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v6, v3, v4}, Lcom/fusepowered/nx/monetization/dialogs/custom/AddCalendarEntryDialog$Calendar;-><init>(Ljava/lang/String;I)V

    .line 118
    .local v6, "calendar":Lcom/fusepowered/nx/monetization/dialogs/custom/AddCalendarEntryDialog$Calendar;
    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    .end local v6    # "calendar":Lcom/fusepowered/nx/monetization/dialogs/custom/AddCalendarEntryDialog$Calendar;
    :goto_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 123
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 125
    .end local v8    # "idCol":I
    .end local v10    # "nameCol":I
    :cond_1
    return-object v7

    .line 119
    .restart local v8    # "idCol":I
    .restart local v10    # "nameCol":I
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method private static validateCalendarData(Lcom/fusepowered/nx/monetization/mraid/objects/CalendarEntryData;)V
    .locals 1
    .param p0, "data"    # Lcom/fusepowered/nx/monetization/mraid/objects/CalendarEntryData;

    .prologue
    .line 130
    invoke-virtual {p0}, Lcom/fusepowered/nx/monetization/mraid/objects/CalendarEntryData;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fusepowered/nx/common/Utilities;->stringIsEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    const-string v0, "<No Data>"

    invoke-virtual {p0, v0}, Lcom/fusepowered/nx/monetization/mraid/objects/CalendarEntryData;->setDescription(Ljava/lang/String;)V

    .line 133
    :cond_0
    invoke-virtual {p0}, Lcom/fusepowered/nx/monetization/mraid/objects/CalendarEntryData;->getLocation()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fusepowered/nx/common/Utilities;->stringIsEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 134
    const-string v0, "<No Data>"

    invoke-virtual {p0, v0}, Lcom/fusepowered/nx/monetization/mraid/objects/CalendarEntryData;->setLocation(Ljava/lang/String;)V

    .line 136
    :cond_1
    return-void
.end method
